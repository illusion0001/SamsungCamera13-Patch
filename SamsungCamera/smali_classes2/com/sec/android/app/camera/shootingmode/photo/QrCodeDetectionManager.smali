.class public Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;
.super Ljava/lang/Object;
.source "QrCodeDetectionManager.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$QrCodeDetectionEventListener;


# static fields
.field private static final CHECK_QR_DETECTED_TIMEOUT:I = 0xfa0

.field private static final HIDE_QR_RECT_TIMEOUT:I = 0x4b0

.field private static final MESSAGE_CHECK_QR_DETECTED:I = 0x2

.field private static final MESSAGE_HIDE_QR_RECT:I = 0x1

.field private static final QR_CODE_DETECTION_INTERVAL:I

.field private static final QR_CODE_DETECTION_OVERHEAT_INTERVAL:I

.field private static final TAG:Ljava/lang/String; = "QrCodeDetectionManager"


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private final mHandler:Landroid/os/Handler;

.field private mIsStarted:Z

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPrevQrRawData:Ljava/lang/String;

.field private mQrCodeResult:Lt4/q0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lr2/h;->t:Lr2/h;

    invoke-static {v0}, Lr2/d;->b(Lr2/h;)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->QR_CODE_DETECTION_INTERVAL:I

    mul-int/lit8 v0, v0, 0x2

    .line 2
    sput v0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->QR_CODE_DETECTION_OVERHEAT_INTERVAL:I

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mIsStarted:Z

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mPrevQrRawData:Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager$1;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 5
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager$2;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mHandler:Landroid/os/Handler;

    .line 6
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 7
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->hideQrRect()V

    return-void
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->isPopupVisible()Z

    move-result p0

    return p0
.end method

.method private getTargetRect([F)Landroid/graphics/RectF;
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [F

    const/4 v2, 0x0

    .line 1
    aget v3, p1, v2

    aput v3, v1, v2

    const/4 v3, 0x2

    aget v4, p1, v3

    const/4 v5, 0x1

    aput v4, v1, v5

    aget v4, p1, v0

    aput v4, v1, v3

    const/4 v4, 0x6

    aget v4, p1, v4

    const/4 v6, 0x3

    aput v4, v1, v6

    new-array v0, v0, [F

    .line 2
    aget v4, p1, v5

    aput v4, v0, v2

    aget v4, p1, v6

    aput v4, v0, v5

    const/4 v4, 0x5

    aget v4, p1, v4

    aput v4, v0, v3

    const/4 v3, 0x7

    aget p1, p1, v3

    aput p1, v0, v6

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->sort([F)V

    .line 4
    invoke-static {v0}, Ljava/util/Arrays;->sort([F)V

    aget p1, v1, v6

    aget v3, v1, v2

    sub-float/2addr p1, v3

    aget v3, v0, v6

    aget v4, v0, v2

    sub-float/2addr v3, v4

    aget v1, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, p1, v4

    add-float/2addr v1, v5

    aget v0, v0, v2

    div-float v2, v3, v4

    add-float/2addr v0, v2

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f07047c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v5, 0x7f07047b

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 7
    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 8
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr p1, p0

    add-float/2addr v2, p0

    div-float p0, p1, v4

    sub-float/2addr v1, p0

    div-float p0, v2, v4

    sub-float/2addr v0, p0

    .line 9
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create()Landroid/graphics/RectF;

    move-result-object p0

    add-float/2addr p1, v1

    add-float/2addr v2, v0

    .line 10
    invoke-virtual {p0, v1, v0, p1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-object p0
.end method

.method private handleQrDataUpdated(Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->updateQrData(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->updateQrPopup(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->updateQrRectView([I)V

    return-void
.end method

.method private hideQrPopup()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->isPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->QR_CODE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)V

    :cond_0
    return-void
.end method

.method private hideQrRect()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;->hideQrRectView()V

    return-void
.end method

.method private hideQrView()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->hideQrPopup()V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->hideQrRect()V

    return-void
.end method

.method private isPopupVisible()Z
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->QR_CODE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->isPopupVisible([Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result p0

    return p0
.end method

.method private isQrCodeDetectionAvailable()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "QrCodeDetectionManager"

    if-nez v0, :cond_0

    const-string p0, "isQrCodeDetectionAvailable returned because Activity is not running"

    .line 2
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "isQrCodeDetectionAvailable returned because shooting mode is not activated"

    .line 4
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "isQrCodeDetectionAvailable returned because capture processing"

    .line 6
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getMenuLayerManager()Lcom/sec/android/app/camera/interfaces/MenuLayerManager;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->CREATE_MY_FILTER:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "isQrCodeDetectionAvailable returned because menu is visible"

    .line 8
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 9
    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->QR_CODE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->isPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "isQrCodeDetectionAvailable returned because popup is not enabled"

    .line 10
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private registerBroadCastReceiver()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.OVERHEAT_LEVEL_CHANGED"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private updateQrData(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mPrevQrRawData:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lt4/p2;->z(Landroid/content/Context;Ljava/lang/String;)Lt4/q0;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mQrCodeResult:Lt4/q0;

    .line 3
    invoke-virtual {p1}, Lt4/q0;->i()Ljava/lang/String;

    move-result-object p0

    const-string p1, "1161"

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateQrPopup(Ljava/lang/String;)V
    .locals 2

    const-string v0, "QrCodeDetectionManager"

    const-string v1, "updateQrPopup"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->QR_CODE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;)Z

    return-void
.end method

.method private updateQrRectView([I)V
    .locals 3

    .line 1
    array-length v0, p1

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 3
    aget v2, p1, v1

    int-to-float v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getPreviewDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 6
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->getTargetRect([F)Landroid/graphics/RectF;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;->updateQrRectView(Landroid/graphics/RectF;)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x4b0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method clearQrData()V
    .locals 1

    const-string v0, ""

    .line 1
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mPrevQrRawData:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mQrCodeResult:Lt4/q0;

    return-void
.end method

.method enableEngineCallback(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setQrCodeDetectionEventListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$QrCodeDetectionEventListener;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableQrCodeDetectionEventCallback(Z)V

    return-void
.end method

.method enableQrDetection(Z)V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget v0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->QR_CODE_DETECTION_INTERVAL:I

    int-to-long v0, v0

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableQrCodeDetection(ZJZ)V

    return-void
.end method

.method isStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mIsStarted:Z

    return p0
.end method

.method public onQrCodeDetected(Ljava/lang/String;[ILandroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->isQrCodeDetectionAvailable()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onQrCodeDetected : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "QrCodeDetectionManager"

    invoke-static {v0, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mPrevQrRawData:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->handleQrDataUpdated(Ljava/lang/String;[I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->isPopupVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->updateQrRectView([I)V

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0xfa0

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method start()V
    .locals 2

    const-string v0, "QrCodeDetectionManager"

    const-string v1, "start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->enableEngineCallback(Z)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->enableQrDetection(Z)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->registerBroadCastReceiver()V

    .line 5
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mIsStarted:Z

    return-void
.end method

.method stop()V
    .locals 3

    const-string v0, "QrCodeDetectionManager"

    const-string v1, "stop"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->enableQrDetection(Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->enableEngineCallback(Z)V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->hideQrView()V

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->clearQrData()V

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mIsStarted:Z

    return-void
.end method

.method updateQrDetectionInterval(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const-wide/16 v0, 0x1388

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setQrCodeDetectionInterval(J)V

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {p1}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getOverheatLevel()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget p1, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->QR_CODE_DETECTION_OVERHEAT_INTERVAL:I

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setQrCodeDetectionInterval(J)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget p1, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->QR_CODE_DETECTION_INTERVAL:I

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setQrCodeDetectionInterval(J)V

    :goto_0
    return-void
.end method
