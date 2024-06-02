.class public Lcom/sec/android/app/camera/Camera;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Camera.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/Camera$MainHandler;
    }
.end annotation


# static fields
.field private static final DELAY_TIME_TO_SLEEP:I = 0xfa

.field private static final INACTIVITY_TIMER_EXPIRED_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final mRecreatingCameraToFullWindow:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTopResumedActivityInfo:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttachModeManager:Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundHandlerThread:Landroid/os/HandlerThread;

.field private mBroadcastReceiver:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

.field private mCallStateManager:Lcom/sec/android/app/camera/provider/CallStateManager;

.field private mCameraAudioManager:Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

.field private mCameraDialogManager:Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

.field private final mCameraErrorEventHandler:Lcom/sec/android/app/camera/CameraErrorEventHandler;

.field private mCameraExecutorManager:Lcom/sec/android/app/camera/executor/CameraExecutorManager;

.field private final mCameraGenericEventHandler:Lcom/sec/android/app/camera/CameraGenericEventHandler;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCameraWindowManager:Lcom/sec/android/app/camera/CameraWindowManager;

.field private mCommandReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

.field private mCoverManager:Lcom/sec/android/app/camera/CoverManager;

.field private mDvfsManager:Lcom/sec/android/app/camera/DvfsManager;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mFilterManager:Lcom/sec/android/app/camera/interfaces/FilterManager;

.field private mHapticManager:Lcom/sec/android/app/camera/HapticManager;

.field private mHdmiServiceManager:Lcom/sec/android/app/camera/interfaces/HdmiServiceManager;

.field private mIsEngineRunning:Z

.field private mIsFromApplicationSettings:Z

.field private mIsGalleryActivityLaunching:Z

.field private mIsLaunchedFromOnCreate:Z

.field private mIsQuickLaunch:Z

.field private mIsRecreating:Z

.field private mIsResetFromSettingActivity:Z

.field private mIsRestarted:Z

.field private mIsReturnFromAppSettingByBixby:Z

.field private mIsRunning:Z

.field private mIsSettingActivityLaunching:Z

.field private mIsTopResumedActivity:Z

.field private mLatestMedia:Lcom/sec/android/app/camera/LatestMediaContent;

.field private mLayerManagerView:Lcom/sec/android/app/camera/layer/LayerManagerView;

.field private mLocalBroadcastReceiver:Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver;

.field private final mLowMemoryListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/CameraContext$LowMemoryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

.field private mNoImageToast:Landroid/widget/Toast;

.field private mPocketChecker:Lcom/sec/android/app/camera/PocketChecker;

.field private mPreviewManager:Lcom/sec/android/app/camera/interfaces/PreviewManager;

.field private mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

.field private mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeatureProvider;

.field private mShootingModeProvider:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

.field private mViewBinding:Ll4/o1;

.field private mVoiceRecognizer:Lcom/sec/android/app/camera/VoiceRecognizer;

.field private mWatchServiceManager:Lcom/sec/android/app/camera/interfaces/WatchServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "13"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/Camera;->mTopResumedActivityInfo:Landroidx/lifecycle/MutableLiveData;

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/Camera;->mRecreatingCameraToFullWindow:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/CameraGenericEventHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraGenericEventHandler;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraGenericEventHandler:Lcom/sec/android/app/camera/CameraGenericEventHandler;

    .line 3
    new-instance v0, Lcom/sec/android/app/camera/CameraErrorEventHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraErrorEventHandler;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraErrorEventHandler:Lcom/sec/android/app/camera/CameraErrorEventHandler;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLowMemoryListenerList:Ljava/util/List;

    .line 5
    new-instance v0, Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/Camera$MainHandler;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/c0;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    return-void
.end method

.method private clearLatestMediaDataInSecureCamera()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/LatestMediaContent;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/LatestMediaContent;->clearSecureContentDataList()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/LatestMediaContent;

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->clearLastContentData()V

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/LatestMediaContent;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->lambda$updateLatestMedia$5()Lcom/sec/android/app/camera/LatestMediaContent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->lambda$startCallStateManager$18()V

    return-void
.end method

.method private finalizeCameraAudioManager()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraAudioManager:Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    check-cast v1, Landroidx/lifecycle/DefaultLifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraAudioManager:Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    return-void
.end method

.method private finalizeCameraExecutorManager()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraExecutorManager:Lcom/sec/android/app/camera/executor/CameraExecutorManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/sec/android/app/camera/executor/CameraExecutorManager;->deInitialize()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraExecutorManager:Lcom/sec/android/app/camera/executor/CameraExecutorManager;

    :cond_0
    return-void
.end method

.method private finalizeCoverManager()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCoverManager:Lcom/sec/android/app/camera/CoverManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CoverManager;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCoverManager:Lcom/sec/android/app/camera/CoverManager;

    :cond_0
    return-void
.end method

.method private finalizeEngine()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->clearLastContentData()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-void
.end method

.method private finalizeHdmiServiceManager()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mHdmiServiceManager:Lcom/sec/android/app/camera/interfaces/HdmiServiceManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/HdmiServiceManager;->stop()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mHdmiServiceManager:Lcom/sec/android/app/camera/interfaces/HdmiServiceManager;

    :cond_0
    return-void
.end method

.method private finalizeLayerManager()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLayerManagerView:Lcom/sec/android/app/camera/layer/LayerManagerView;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/c;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/c;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mViewBinding:Ll4/o1;

    iget-object v0, v0, Ll4/o1;->c:Lcom/sec/android/app/camera/MainLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MainLayout;->setOrientationEventListener(Lcom/sec/android/app/camera/MainLayout$OrientationEventListener;)V

    .line 3
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mLayerManagerView:Lcom/sec/android/app/camera/layer/LayerManagerView;

    return-void
.end method

.method private finalizeWatchManager()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mWatchServiceManager:Lcom/sec/android/app/camera/interfaces/WatchServiceManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/WatchServiceManager;->stop()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mWatchServiceManager:Lcom/sec/android/app/camera/interfaces/WatchServiceManager;

    :cond_0
    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->lambda$onCreate$8()V

    return-void
.end method

.method private getActivityInfo()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->lambda$onCreate$9()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->lambda$updateThumbnail$7()V

    return-void
.end method

.method private inflateMainLayer()V
    .locals 2

    const-string v0, "Launch - InflateMainLayer"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    const-string v1, "inflateMainLayer"

    .line 2
    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Ll4/o1;->e(Landroid/view/LayoutInflater;)Ll4/o1;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mViewBinding:Ll4/o1;

    const/4 p0, 0x0

    .line 4
    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    .line 5
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method private initializeAttachMode()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :cond_0
    new-instance v1, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mAttachModeManager:Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;

    .line 4
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->updateAttachMode(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private initializeCameraAudioManager()V
    .locals 2

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraAudioManager:Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    .line 2
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraAudioManager:Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    check-cast p0, Landroidx/lifecycle/DefaultLifecycleObserver;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private initializeCameraExecutorManager()V
    .locals 7

    .line 1
    sget-object v0, Lr2/b;->H:Lr2/b;

    invoke-static {v0}, Lr2/d;->e(Lr2/b;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "from-bixby"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraExecutorManager:Lcom/sec/android/app/camera/executor/CameraExecutorManager;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl;-><init>(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/interfaces/CameraSettings;Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraExecutorManager:Lcom/sec/android/app/camera/executor/CameraExecutorManager;

    .line 3
    invoke-interface {v0}, Lcom/sec/android/app/camera/executor/CameraExecutorManager;->initialize()V

    :cond_1
    return-void
.end method

.method private initializeCameraMode(Z)V
    .locals 7

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/Camera;->mCameraWindowManager:Lcom/sec/android/app/camera/CameraWindowManager;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraWindowManager;->getMultiWindowMode()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MULTI_WINDOW_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    :goto_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 2
    sget-object v3, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeCameraMode : MultiWindow mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLDUModel()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    sget-object v3, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v4, "initializeCameraMode : Retail mode."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v1

    .line 5
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSettingMode(I)V

    .line 6
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mViewBinding:Ll4/o1;

    iget-object v4, v4, Ll4/o1;->c:Lcom/sec/android/app/camera/MainLayout;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/MainLayout;->setResizable(Z)V

    .line 7
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MULTI_WINDOW_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v4, v5, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 8
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SECURE_CAMERA:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/sec/android/app/camera/util/Util;->isSecureCamera(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 9
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->KNOX_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 10
    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QR_SCANNER_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v2, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    goto :goto_3

    .line 13
    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 14
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "from-bixby"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->requestDismissKeyguard(Landroid/app/Activity;)V

    .line 16
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isQuickLaunch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsQuickLaunch:Z

    .line 17
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeCameraMode : QuickLaunch = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camera;->mIsQuickLaunch:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", Secure = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", Knox = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKnoxCamera()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", MultiWindow mode = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, v2, :cond_7

    .line 18
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraWindowManager:Lcom/sec/android/app/camera/CameraWindowManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraWindowManager;->registerPreDrawListener()V

    :cond_7
    return-void
.end method

.method private initializeCoverManager()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/camera/CoverManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/CoverManager;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCoverManager:Lcom/sec/android/app/camera/CoverManager;

    return-void
.end method

.method private initializeEngine()V
    .locals 3

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraGenericEventHandler:Lcom/sec/android/app/camera/CameraGenericEventHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraErrorEventHandler:Lcom/sec/android/app/camera/CameraErrorEventHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;Lcom/sec/android/app/camera/interfaces/Engine$CameraErrorEventListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mShootingModeProvider:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->setEngine(Lcom/sec/android/app/camera/interfaces/Engine;)V

    return-void
.end method

.method private initializeHdmiServiceManager()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CLEAN_HDMI:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mHdmiServiceManager:Lcom/sec/android/app/camera/interfaces/HdmiServiceManager;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/t;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/t;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/HdmiServiceManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mHdmiServiceManager:Lcom/sec/android/app/camera/interfaces/HdmiServiceManager;

    .line 3
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/HdmiServiceManager;->start()V

    :cond_0
    return-void
.end method

.method private initializePreviewManager()V
    .locals 3

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mViewBinding:Ll4/o1;

    iget-object v2, v2, Ll4/o1;->f:Landroid/view/TextureView;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mViewBinding:Ll4/o1;

    iget-object v2, v2, Ll4/o1;->d:Landroid/view/SurfaceView;

    :goto_0
    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mPreviewManager:Lcom/sec/android/app/camera/interfaces/PreviewManager;

    .line 2
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->initFirstPreviewSurfaceSize()V

    return-void
.end method

.method private initializeQrScannerMode()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_qr_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v2, "initializeQrScannerMode: Multi-window camera is not supported for QR Scanner mode"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QR_SCANNER_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method private initializeResumedActivityInfo()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/Camera;->mTopResumedActivityInfo:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/sec/android/app/camera/a;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/a;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initializeVoiceControl()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "start_selfie_by_voicecommand"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VOICE_CONTROL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    :cond_0
    return-void
.end method

.method private initializeWatchManager()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->isLaunchedFromWatch(Landroid/content/Intent;)Z

    move-result v0

    .line 2
    sget-object v1, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeWatchManager :  launchedFromWatch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mWatchServiceManager:Lcom/sec/android/app/camera/interfaces/WatchServiceManager;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/s;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/s;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/WatchServiceManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mWatchServiceManager:Lcom/sec/android/app/camera/interfaces/WatchServiceManager;

    .line 4
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/WatchServiceManager;->start()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATCH_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    :goto_0
    return-void
.end method

.method private isLaunchedFromWatch(Landroid/content/Intent;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    const-string v0, "from_watch"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method private isNeedToRecreateActivity()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraWindowManager:Lcom/sec/android/app/camera/CameraWindowManager;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraWindowManager;->isNeedRecreate(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "isNeedToRecreateActivity : Camera should be recreated because multi window mode is changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->updatePausingViewIcon(Z)V

    return v3

    .line 4
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsResetFromSettingActivity:Z

    const-string v1, "pref_key_preference_reset"

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    iget-boolean p0, p0, Lcom/sec/android/app/camera/Camera;->mIsReturnFromAppSettingByBixby:Z

    if-eqz p0, :cond_4

    .line 6
    sget-object p0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "isNeedToRecreateActivity : Camera should be recreated because it should be restarted from application camera setting by bixby command"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    return v2

    .line 7
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 8
    sget-object p0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "isNeedToRecreateActivity : Camera should be recreated because Camera setting got a reset"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private isQuickLaunch()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "isQuickLaunchMode"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v3

    if-eqz v0, :cond_1

    if-eq v3, v1, :cond_2

    const/4 v0, 0x3

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 4
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "KEYCODE"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 5
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isQuickLaunch : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", keyCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/provider/CallStateManager;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->lambda$startCallStateManager$17()Lcom/sec/android/app/camera/provider/CallStateManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->lambda$resumePresentation$4()V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->lambda$onKeyUp$0()V

    return-void
.end method

.method private synthetic lambda$addSecureContentData$10()Lcom/sec/android/app/camera/LatestMediaContent;
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/LatestMediaContent;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/LatestMediaContent;-><init>(Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method private synthetic lambda$finalizeLayerManager$13(Lcom/sec/android/app/camera/layer/LayerManagerView;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private synthetic lambda$hidePausingView$11()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mViewBinding:Ll4/o1;

    iget-object p0, p0, Ll4/o1;->a:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$initializeHdmiServiceManager$14()Lcom/sec/android/app/camera/interfaces/HdmiServiceManager;
    .locals 2

    new-instance v0, Lcom/sec/android/app/camera/hdmi/HdmiServiceManagerImpl;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/hdmi/HdmiServiceManagerImpl;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V

    return-object v0
.end method

.method private synthetic lambda$initializeLayerManager$12(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->onOrientationChanged(I)V

    return-void
.end method

.method private synthetic lambda$initializeResumedActivityInfo$15(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsEngineRunning:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->getActivityInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "topResumedActivityInfo.onChanged : Pause camera because top resumed position has been gotten by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->pauseCamera()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initializeWatchManager$16()Lcom/sec/android/app/camera/interfaces/WatchServiceManager;
    .locals 4

    new-instance v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mShootingModeProvider:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    check-cast v3, Lcom/sec/android/app/camera/interfaces/WatchServiceManager$WatchEventListener;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;Lcom/sec/android/app/camera/interfaces/WatchServiceManager$WatchEventListener;)V

    return-object v0
.end method

.method private synthetic lambda$onCreate$8()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/StorageUtils;->setExternalSDStorageVolume(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onCreate$9()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    return-void
.end method

.method private synthetic lambda$onKeyUp$0()V
    .locals 2

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->semGoToSleep(J)V

    return-void
.end method

.method private static synthetic lambda$onTrimMemory$1(Lcom/sec/android/app/camera/interfaces/CameraContext$LowMemoryListener;)V
    .locals 1

    const/16 v0, 0xa

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$LowMemoryListener;->onLowMemory(I)V

    return-void
.end method

.method private static synthetic lambda$onTrimMemory$2(Lcom/sec/android/app/camera/interfaces/CameraContext$LowMemoryListener;)V
    .locals 1

    const/16 v0, 0xb

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$LowMemoryListener;->onLowMemory(I)V

    return-void
.end method

.method private synthetic lambda$pausePresentation$3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mHdmiServiceManager:Lcom/sec/android/app/camera/interfaces/HdmiServiceManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/HdmiServiceManager;->pauseExtraPreview()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->reconnectMaker()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$resumePresentation$4()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mHdmiServiceManager:Lcom/sec/android/app/camera/interfaces/HdmiServiceManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/HdmiServiceManager;->resumeExtraPreview()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->reconnectMaker()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startCallStateManager$17()Lcom/sec/android/app/camera/provider/CallStateManager;
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/provider/CallStateManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/provider/CallStateManager;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    return-object v0
.end method

.method private synthetic lambda$startCallStateManager$18()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCallStateManager:Lcom/sec/android/app/camera/provider/CallStateManager;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/p;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/p;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/provider/CallStateManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCallStateManager:Lcom/sec/android/app/camera/provider/CallStateManager;

    .line 2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/provider/CallStateManager;->start()V

    return-void
.end method

.method private synthetic lambda$updateLatestMedia$5()Lcom/sec/android/app/camera/LatestMediaContent;
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/LatestMediaContent;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/LatestMediaContent;-><init>(Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method private synthetic lambda$updateLatestMedia$6()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/LatestMediaContent;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/o;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/o;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/LatestMediaContent;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/LatestMediaContent;

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/LatestMediaContent;->update(Z)V

    return-void
.end method

.method private synthetic lambda$updateThumbnail$7()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->updateQuickViewThumbnail()V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->lambda$pausePresentation$3()V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/LatestMediaContent;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->lambda$addSecureContentData$10()Lcom/sec/android/app/camera/LatestMediaContent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->lambda$initializeResumedActivityInfo$15(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic p(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->lambda$updateLatestMedia$6()V

    return-void
.end method

.method private pauseCamera()V
    .locals 3

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseCamera : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->getActivityInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopEngine()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->showPausingView(Z)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mPreviewManager:Lcom/sec/android/app/camera/interfaces/PreviewManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->stopSurfaceManager()V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->finalizeWatchManager()V

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopVoiceRecognizer()V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraGenericEventHandler:Lcom/sec/android/app/camera/CameraGenericEventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->resetFlag()V

    return-void
.end method

.method public static synthetic q(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->lambda$hidePausingView$11()V

    return-void
.end method

.method public static synthetic r(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/layer/LayerManagerView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->lambda$finalizeLayerManager$13(Lcom/sec/android/app/camera/layer/LayerManagerView;)V

    return-void
.end method

.method private registerCoverManagerListeners()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCoverManager:Lcom/sec/android/app/camera/CoverManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/e;->a:Lcom/sec/android/app/camera/e;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private requestResumeCamera()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsLaunchedFromOnCreate:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->getActivityInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launch"

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;ZLjava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;->showBlackArea()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->resumeCamera()V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "requestResumeCamera : This activity camera will be opened when activity gets top resumed position."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsEngineRunning:Z

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hidePausingView()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->updatePausingViewIcon(Z)V

    :goto_1
    return-void
.end method

.method private resetFlags()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsQuickLaunch:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isQuickLaunchMode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraErrorEventHandler:Lcom/sec/android/app/camera/CameraErrorEventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraErrorEventHandler;->resetFlag()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraGenericEventHandler:Lcom/sec/android/app/camera/CameraGenericEventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->resetFlag()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsFromApplicationSettings:Z

    .line 6
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsLaunchedFromOnCreate:Z

    .line 7
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsQuickLaunch:Z

    .line 8
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsResetFromSettingActivity:Z

    .line 9
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsRestarted:Z

    .line 10
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsRunning:Z

    .line 11
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsReturnFromAppSettingByBixby:Z

    return-void
.end method

.method private restartCameraActivity(ZZ)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.MAIN"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string p1, "isSecure"

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "from_watch"

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7
    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private resumeCamera()V
    .locals 3

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeCamera : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->getActivityInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hidePausingView()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->initializeCameraMode(Z)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startEngine()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->reconnectMaker()V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initializeWatchManager()V

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initializeHdmiServiceManager()V

    return-void
.end method

.method public static synthetic s(Lcom/sec/android/app/camera/interfaces/CameraContext$LowMemoryListener;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/Camera;->lambda$onTrimMemory$1(Lcom/sec/android/app/camera/interfaces/CameraContext$LowMemoryListener;)V

    return-void
.end method

.method private showNoImageToast()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120327

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f1203ae

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f1203ad

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mNoImageToast:Landroid/widget/Toast;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/d;->a:Lcom/sec/android/app/camera/d;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mNoImageToast:Landroid/widget/Toast;

    .line 8
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startBackgroundHandler()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BackgroundHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBackgroundHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private startCallStateManager()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/u;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/u;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startEngine()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraGenericEventHandler:Lcom/sec/android/app/camera/CameraGenericEventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->onStartEngineRequested()V

    .line 2
    invoke-static {}, Lp4/b;->e()V

    .line 3
    sget-object v0, Lp4/d;->d:Lp4/d;

    invoke-static {v0}, Lp4/b;->b(Lp4/d;)Lp4/c;

    move-result-object v0

    invoke-virtual {v0}, Lp4/c;->c()V

    .line 4
    invoke-static {p0}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->isCameraRestricted(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, -0x4

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v2, "startEngine : returned because Camera is restricted."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraErrorEventHandler:Lcom/sec/android/app/camera/CameraErrorEventHandler;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraErrorEventHandler;->onError(I)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v2, "startEngine : returned because Camera is disabled by DevicePolicyManager."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraErrorEventHandler:Lcom/sec/android/app/camera/CameraErrorEventHandler;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraErrorEventHandler;->onError(I)V

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/PermissionUtils;->checkAllRuntimePermissions(Landroid/app/Activity;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    sget-object p0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "startEngine : returned because failed to grant permissions."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 12
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsFromApplicationSettings:Z

    if-eqz v0, :cond_3

    .line 13
    sget-object p0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "startEngine : returned because it is from Application Settings."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 14
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    sget-object p0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "startEngine : returned because Camera is finishing."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 16
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CallStateManager;->isVTCallOngoing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "startEngine : returned because VT call is ongoing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraDialogManager:Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->UNABLE_TO_USE_CAMERA_DURING_VIDEO_CALL:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)V

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsEngineRunning:Z

    .line 20
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getNextCameraId(Z)I

    move-result v0

    .line 21
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v1

    if-eq v1, v0, :cond_6

    .line 22
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraId(I)V

    .line 23
    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->startEngine()V

    return-void
.end method

.method private startInactivityTimer()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isSmartViewConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATCH_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "startInactivityTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->INACTIVITY_TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    int-to-long v2, p0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startPocketChecker()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsQuickLaunch:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/PocketChecker;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/PocketChecker;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    .line 3
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PocketChecker;->isHrmSensorSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PocketChecker;->start()V

    .line 5
    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mPocketChecker:Lcom/sec/android/app/camera/PocketChecker;

    :cond_0
    return-void
.end method

.method private stopBackgroundHandler()V
    .locals 4

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "stopBackgroundHandler - start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopBackgroundHandler : interrupted - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    .line 7
    :cond_0
    sget-object p0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "stopBackgroundHandler - end"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private stopCallStateManager()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCallStateManager:Lcom/sec/android/app/camera/provider/CallStateManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/n;->a:Lcom/sec/android/app/camera/n;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private stopEngine()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsEngineRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsEngineRunning:Z

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraGenericEventHandler:Lcom/sec/android/app/camera/CameraGenericEventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->onStopEngineRequested()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->prepareToStopEngine()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShootingModeProvider:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->onInactivate()V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopEngine()V

    return-void
.end method

.method private stopPocketChecker()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mPocketChecker:Lcom/sec/android/app/camera/PocketChecker;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PocketChecker;->stop()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mPocketChecker:Lcom/sec/android/app/camera/PocketChecker;

    :cond_0
    return-void
.end method

.method public static synthetic t(Lcom/sec/android/app/camera/Camera;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->lambda$initializeLayerManager$12(I)V

    return-void
.end method

.method public static synthetic u(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/WatchServiceManager;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->lambda$initializeWatchManager$16()Lcom/sec/android/app/camera/interfaces/WatchServiceManager;

    move-result-object p0

    return-object p0
.end method

.method private unregisterCoverManagerListeners()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCoverManager:Lcom/sec/android/app/camera/CoverManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/h;->a:Lcom/sec/android/app/camera/h;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic v(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/HdmiServiceManager;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->lambda$initializeHdmiServiceManager$14()Lcom/sec/android/app/camera/interfaces/HdmiServiceManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lcom/sec/android/app/camera/interfaces/CameraContext$LowMemoryListener;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/Camera;->lambda$onTrimMemory$2(Lcom/sec/android/app/camera/interfaces/CameraContext$LowMemoryListener;)V

    return-void
.end method

.method static bridge synthetic x()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public acquireDvfsLock(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mDvfsManager:Lcom/sec/android/app/camera/DvfsManager;

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v1, 0x41a

    invoke-virtual {v0, p0, v1, p1}, Lcom/sec/android/app/camera/DvfsManager;->acquireDvfsLock(Landroid/os/Handler;II)V

    return-void
.end method

.method addSecureContentData(Landroid/net/Uri;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/LatestMediaContent;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/q;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/q;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/LatestMediaContent;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/LatestMediaContent;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/LatestMediaContent;->addSecureContentData(Landroid/net/Uri;I)V

    return-void
.end method

.method public changeShootingMode(IZ)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mShootingModeProvider:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->changeShootingMode(IZ)Z

    move-result p0

    return p0
.end method

.method public finish()V
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "finish : Returned because activity is finishing."

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getActivity()Landroidx/appcompat/app/AppCompatActivity;
    .locals 0

    return-object p0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getAttachModeManager()Lcom/sec/android/app/camera/interfaces/AttachModeManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mAttachModeManager:Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;

    return-object p0
.end method

.method public getBackgroundHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraAudioManager:Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    return-object p0
.end method

.method public getCameraDialogManager()Lcom/sec/android/app/camera/interfaces/CameraDialogManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraDialogManager:Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    return-object p0
.end method

.method getCameraExecutorManager()Lcom/sec/android/app/camera/executor/CameraExecutorManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraExecutorManager:Lcom/sec/android/app/camera/executor/CameraExecutorManager;

    return-object p0
.end method

.method public getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object p0
.end method

.method getCameraWindowManager()Lcom/sec/android/app/camera/CameraWindowManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraWindowManager:Lcom/sec/android/app/camera/CameraWindowManager;

    return-object p0
.end method

.method public getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCommandReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getCurrentWindowHeight()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mViewBinding:Ll4/o1;

    iget-object p0, p0, Ll4/o1;->c:Lcom/sec/android/app/camera/MainLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getCurrentWindowWidth()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mViewBinding:Ll4/o1;

    iget-object p0, p0, Ll4/o1;->c:Lcom/sec/android/app/camera/MainLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    return p0
.end method

.method public getDisplayRotation()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "getDisplayRotation() : getDisplay() is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0
.end method

.method protected getEngine()Lcom/sec/android/app/camera/interfaces/Engine;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-object p0
.end method

.method public getFilterManager()Lcom/sec/android/app/camera/interfaces/FilterManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mFilterManager:Lcom/sec/android/app/camera/interfaces/FilterManager;

    return-object p0
.end method

.method public getLatestMedia()Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/LatestMediaContent;

    return-object p0
.end method

.method public getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLayerManagerView:Lcom/sec/android/app/camera/layer/LayerManagerView;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->initializeLayerManager()V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mLayerManagerView:Lcom/sec/android/app/camera/layer/LayerManagerView;

    return-object p0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    return-object p0
.end method

.method public getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mPreviewManager:Lcom/sec/android/app/camera/interfaces/PreviewManager;

    return-object p0
.end method

.method public getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeatureProvider;

    return-object p0
.end method

.method getShootingModeProvider()Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mShootingModeProvider:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    return-object p0
.end method

.method public getUriListInSecureCamera()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/LatestMediaContent;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/LatestMediaContent;->getUriListInSecureCamera()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method getWatchServiceManager()Lcom/sec/android/app/camera/interfaces/WatchServiceManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mWatchServiceManager:Lcom/sec/android/app/camera/interfaces/WatchServiceManager;

    return-object p0
.end method

.method handleCameraError()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsEngineRunning:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "handleCameraError : Camera will be paused."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->pauseCamera()V

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "handleCameraError : Camera was already paused."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsTopResumedActivity:Z

    if-eqz v1, :cond_1

    const-string v1, "handleCameraError : Camera should try to open the camera again!"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->resumeCamera()V

    :cond_1
    return-void
.end method

.method public handleSmartScanCaptureEvent(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;->performShutterButtonClick(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    return-void
.end method

.method hidePausingView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mViewBinding:Ll4/o1;

    iget-object v0, v0, Ll4/o1;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "hidePausingView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Lcom/sec/android/app/camera/b;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/b;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method initializeLayerManager()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLayerManagerView:Lcom/sec/android/app/camera/layer/LayerManagerView;

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "Layer manager view is inflated already."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mViewBinding:Ll4/o1;

    iget-object v0, v0, Ll4/o1;->g:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/LayerManagerView;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLayerManagerView:Lcom/sec/android/app/camera/layer/LayerManagerView;

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mViewBinding:Ll4/o1;

    iget-object v1, v1, Ll4/o1;->g:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v1}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/LayerManagerView;->setViewBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 5
    new-instance v0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mLayerManagerView:Lcom/sec/android/app/camera/layer/LayerManagerView;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/layer/LayerManagerContract$View;Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;)V

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mLayerManagerView:Lcom/sec/android/app/camera/layer/LayerManagerView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->setPresenter(Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLayerManagerView:Lcom/sec/android/app/camera/layer/LayerManagerView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->initialize()V

    .line 8
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mViewBinding:Ll4/o1;

    iget-object v0, v0, Ll4/o1;->c:Lcom/sec/android/app/camera/MainLayout;

    new-instance v1, Lcom/sec/android/app/camera/l;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/l;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MainLayout;->setOrientationEventListener(Lcom/sec/android/app/camera/MainLayout$OrientationEventListener;)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLayerManagerView:Lcom/sec/android/app/camera/layer/LayerManagerView;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mViewBinding:Ll4/o1;

    iget-object v1, v1, Ll4/o1;->c:Lcom/sec/android/app/camera/MainLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRotation()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/LayerManagerView;->refreshOrientation(I)V

    .line 11
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mLayerManagerView:Lcom/sec/android/app/camera/layer/LayerManagerView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->getPreviewAnimationLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;->showBlackArea()V

    return-void
.end method

.method public isAngleChangeSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeatureProvider;

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAngleChangeSupported(I)Z

    move-result p0

    return p0
.end method

.method public isAttachFragmentVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mAttachModeManager:Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->isAttachFragmentVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isBixbyRuleRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraExecutorManager:Lcom/sec/android/app/camera/executor/CameraExecutorManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/camera/executor/CameraExecutorManager;->isRuleRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCaptureAvailable()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShootingModeProvider:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isShootingAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "Capture is not available - shooting is not available."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isAttachFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "Capture is not available - attach fragment visible."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "Capture is not available - Video attach mode."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeatureProvider;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTakingPictureSupported()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeatureProvider;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingSnapshotSupported()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    sget-object p0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "Capture is not available - Taking picture is not supported."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->isCaptureAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 11
    sget-object p0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "Capture is not available - current state is not PREVIEWING"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 12
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "selfie_tone_camera"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    sget-object p0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "Capture is not available - Selfie tone mode"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 14
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomManager;->isAnimationFinished()Z

    move-result v0

    if-nez v0, :cond_7

    .line 15
    sget-object p0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "Capture is not available - Zoom animation is in progress."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 16
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ZoomManager;->isSliderScrolling()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 17
    sget-object p0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "Capture is not available - Zoom slider is scrolling."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public isCapturing()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->PREPARING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->CAPTURING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->STARTING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    .line 2
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->STOPPING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isDestroying()Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    return p0
.end method

.method public isFilterSupported()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selfie_tone_camera"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isGalleryActivityLaunching()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/Camera;->mIsGalleryActivityLaunching:Z

    return p0
.end method

.method public isInLockTaskMode()Z
    .locals 1

    const-string v0, "activity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isLayerInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLayerManagerView:Lcom/sec/android/app/camera/layer/LayerManagerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/layer/LayerManagerView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecording()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->SWITCHING_RECORD_FACING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isRecordingAvailable(Z)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShootingModeProvider:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isShootingAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingAvailable(Z)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isRecreating()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/Camera;->mIsRecreating:Z

    return p0
.end method

.method isRecreatingCameraToFullWindowExists()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/Camera;->mRecreatingCameraToFullWindow:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->getActivityInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRestarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/Camera;->mIsRestarted:Z

    return p0
.end method

.method public isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/Camera;->mIsRunning:Z

    return p0
.end method

.method public isSeamlessZoomAvailable(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x14

    if-eq p1, v1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeatureProvider;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing(I)I

    move-result v1

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution(I)I

    move-result p0

    invoke-static {v1, p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderSeamlessZoomRecordingAvailableFeature(II)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isSensorCropEnabled()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeatureProvider;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAngleChangeSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SENSOR_CROP:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    if-ne p0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public isSettingActivityLaunching()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/Camera;->mIsSettingActivityLaunching:Z

    return p0
.end method

.method public isShootingModeActivated()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mShootingModeProvider:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isActivated()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isZoomAvailable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mLayerManagerView:Lcom/sec/android/app/camera/layer/LayerManagerView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ZoomManager;->isZoomAvailable()Z

    move-result p0

    return p0
.end method

.method public isZoomSupported()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mLayerManagerView:Lcom/sec/android/app/camera/layer/LayerManagerView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ZoomManager;->isZoomSupported()Z

    move-result p0

    return p0
.end method

.method public launchGallery(Landroid/widget/ImageView;)V
    .locals 6

    .line 1
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/GalleryIntentHelper;->getGalleryIntent(Lcom/sec/android/app/camera/interfaces/CameraContext;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "launchGallery : returned because there is no image or video to show"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->showNoImageToast()V

    return-void

    .line 4
    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchGallery: dateTaken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x0

    const-string v5, "date"

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", orientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, -0x1

    const-string v4, "orientation"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsGalleryActivityLaunching:Z

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;->preparePausedPreviewSnapshot()V

    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-static {p1, v1, v1, v2, v3}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    sget-object p1, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "Gallery was disabled!!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsGalleryActivityLaunching:Z

    .line 11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;->cancelPreviewAnimation()V

    .line 12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f120179

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method protected launchGalleryForSelectMyFilterImage()Z
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsGalleryActivityLaunching:Z

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;->preparePausedPreviewSnapshot()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-static {p0}, Lcom/sec/android/app/camera/util/GalleryIntentHelper;->getGalleryIntentForSelectMyFilterImage(Lcom/sec/android/app/camera/interfaces/CameraContext;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x7f4

    invoke-virtual {v1, v2, v3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsGalleryActivityLaunching:Z

    .line 5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;->cancelPreviewAnimation()V

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f120179

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 7
    sget-object p0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "launchGalleryForSelectMyFilterImage : Activity is not founded, return."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/camera/ActivityResultHelper;->handleActivityResult(Lcom/sec/android/app/camera/Camera;IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->setDeadZone(Landroid/view/Window;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isAttachFragmentVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mAttachModeManager:Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "Ignore back key : preview has not started yet."

    .line 6
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "Ignore back key : isCapturing"

    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_3
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method onCameraEnterCompleted()V
    .locals 5

    const-string v0, "VerificationLog"

    const-string v1, "Executed"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launch - LazyLoading"

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->getActivityInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launch"

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;ZLjava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraWindowManager:Lcom/sec/android/app/camera/CameraWindowManager;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/CameraWindowManager;->lockCurrentOrientation(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getDisplayRotation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->enable(I)V

    .line 6
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mShootingModeProvider:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->onActivate()V

    .line 7
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCoverManager:Lcom/sec/android/app/camera/CoverManager;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/f;->a:Lcom/sec/android/app/camera/f;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 8
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraDialogManager:Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->checkExternalSdStorage()V

    .line 9
    # No location tag dialog on launch
    # iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraDialogManager:Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    # sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_FIRST_LAUNCH_CAMERA:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    # invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)V

    .line 10
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraDialogManager:Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->TALK_BACK_GUIDE:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)V

    .line 11
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initializeCameraExecutorManager()V

    .line 12
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startPocketChecker()V

    .line 13
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mFilterManager:Lcom/sec/android/app/camera/interfaces/FilterManager;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/FilterManager;->loadFilters()V

    .line 14
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraDialogManager:Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->startUpdateCheck(Z)V

    .line 15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getOverlayLayerManager()Lcom/sec/android/app/camera/interfaces/OverlayLayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayerManager;->startDisplayCutoutAnimation()V

    .line 16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;->hideBlackArea()V

    .line 17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startVoiceRecognizer()V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "selfie_tone_camera"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 19
    sget-object v1, Lcom/sec/android/app/camera/logging/SaLogEventId;->LAUNCH_CAMERA:Lcom/sec/android/app/camera/logging/SaLogEventId;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v2

    iget-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mIsQuickLaunch:Z

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/logging/SaLogDetail;->getDetailByLaunchCamera(ZZ)Lcom/sec/android/app/camera/logging/SaLogDetail;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLog(Lcom/sec/android/app/camera/logging/SaLogEventId;Lcom/sec/android/app/camera/logging/SaLogDetail;)V

    .line 20
    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->registerSettingStatusLogging(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    .line 21
    sget-object p0, Lp4/d;->d:Lp4/d;

    invoke-static {p0}, Lp4/b;->b(Lp4/d;)Lp4/c;

    move-result-object p0

    invoke-virtual {p0}, Lp4/c;->a()V

    .line 22
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public onChangePreviewSurfaceSizeRequested()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraGenericEventHandler:Lcom/sec/android/app/camera/CameraGenericEventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->onChangePreviewSurfaceSizeRequested()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraWindowManager:Lcom/sec/android/app/camera/CameraWindowManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraWindowManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "onCreate"

    .line 2
    invoke-static {p1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    const-string v0, "VerificationLog"

    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->getActivityInfo()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Launch - onCreate"

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;ZLjava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->getActivityInfo()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Launch"

    invoke-static {v2, v1, p1}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsRunning:Z

    .line 7
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 8
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startBackgroundHandler()V

    .line 9
    invoke-static {}, Lcom/sec/android/app/camera/util/BroadcastUtil;->starHandler()V

    .line 10
    new-instance p1, Lcom/sec/android/app/camera/setting/repository/CameraSettingsImpl;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/setting/repository/CameraSettingsImpl;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 11
    new-instance p1, Lcom/sec/android/app/camera/ShootingActionManager;

    invoke-direct {p1}, Lcom/sec/android/app/camera/ShootingActionManager;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    .line 12
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v2, p0, v3, p1}, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mShootingModeProvider:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    .line 13
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->getFeatureProvider()Lcom/sec/android/app/camera/interfaces/ShootingModeFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeatureProvider;

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "fromApplicationSettings"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsFromApplicationSettings:Z

    .line 16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startCameraSettingActivity()Z

    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->inflateMainLayer()V

    .line 18
    iget-object p1, p0, Lcom/sec/android/app/camera/Camera;->mViewBinding:Ll4/o1;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 19
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initializeEngine()V

    .line 20
    new-instance p1, Lcom/sec/android/app/camera/CameraWindowManager;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mViewBinding:Ll4/o1;

    iget-object v2, v2, Ll4/o1;->c:Lcom/sec/android/app/camera/MainLayout;

    invoke-direct {p1, p0, v2}, Lcom/sec/android/app/camera/CameraWindowManager;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/MainLayout;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mCameraWindowManager:Lcom/sec/android/app/camera/CameraWindowManager;

    .line 21
    new-instance p1, Lm4/v0;

    invoke-direct {p1, p0}, Lm4/v0;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mCameraDialogManager:Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    .line 22
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/Camera;->initializeCameraMode(Z)V

    .line 23
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initializeAttachMode()V

    .line 24
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initializeQrScannerMode()V

    .line 25
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initializeVoiceControl()V

    .line 26
    iget-object p1, p0, Lcom/sec/android/app/camera/Camera;->mShootingModeProvider:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->initialize(Landroid/content/Intent;Z)V

    .line 27
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initializePreviewManager()V

    .line 28
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startEngine()V

    .line 29
    iget-object p1, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShootingModeProvider:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->getInitialShootingMode()I

    move-result v1

    invoke-interface {p1, v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->changeShootingMode(IZ)V

    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initializeWatchManager()V

    .line 31
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initializeHdmiServiceManager()V

    .line 32
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initializeCoverManager()V

    .line 33
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initializeResumedActivityInfo()V

    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initializeCameraAudioManager()V

    .line 35
    new-instance p1, Lcom/sec/android/app/camera/CommandReceiver;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {p1, p0, v1, v2}, Lcom/sec/android/app/camera/CommandReceiver;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/interfaces/CameraSettings;Lcom/sec/android/app/camera/interfaces/Engine;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mCommandReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    .line 36
    new-instance p1, Lcom/sec/android/app/camera/DvfsManager;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/DvfsManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mDvfsManager:Lcom/sec/android/app/camera/DvfsManager;

    .line 37
    new-instance p1, Lcom/sec/android/app/camera/HapticManager;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/HapticManager;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mHapticManager:Lcom/sec/android/app/camera/HapticManager;

    .line 38
    new-instance p1, Lcom/sec/android/app/camera/VoiceRecognizer;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    invoke-direct {p1, p0, v1}, Lcom/sec/android/app/camera/VoiceRecognizer;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mVoiceRecognizer:Lcom/sec/android/app/camera/VoiceRecognizer;

    .line 39
    new-instance p1, Lcom/sec/android/app/camera/filter/FilterManagerImpl;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {p1, p0, v1}, Lcom/sec/android/app/camera/filter/FilterManagerImpl;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mFilterManager:Lcom/sec/android/app/camera/interfaces/FilterManager;

    .line 40
    new-instance p1, Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/CameraBroadcastReceiver;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Lcom/sec/android/app/camera/CameraBroadcastReceiver;

    .line 41
    new-instance p1, Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mLocalBroadcastReceiver:Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver;

    .line 42
    iget-object p1, p0, Lcom/sec/android/app/camera/Camera;->mCameraGenericEventHandler:Lcom/sec/android/app/camera/CameraGenericEventHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->init()V

    .line 43
    iget-object p1, p0, Lcom/sec/android/app/camera/Camera;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/v;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/v;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    iget-object p1, p0, Lcom/sec/android/app/camera/Camera;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/w;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/w;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    .line 46
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->getActivityInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exit - onDestroy"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsRunning:Z

    const/16 v2, 0x7e6

    .line 4
    invoke-virtual {p0, v2}, Landroid/app/Activity;->finishActivity(I)V

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraGenericEventHandler:Lcom/sec/android/app/camera/CameraGenericEventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->clear()V

    .line 6
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mLowMemoryListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 7
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraWindowManager:Lcom/sec/android/app/camera/CameraWindowManager;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraWindowManager;->clear()V

    .line 8
    invoke-static {}, Lcom/sec/android/app/camera/executor/ActionStateSet;->resetPopupWindowEnable()V

    .line 9
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->finalizeWatchManager()V

    .line 10
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->finalizeHdmiServiceManager()V

    .line 11
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->finalizeCoverManager()V

    .line 12
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->finalizeCameraAudioManager()V

    .line 13
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->finalizeLayerManager()V

    .line 14
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mFilterManager:Lcom/sec/android/app/camera/interfaces/FilterManager;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/FilterManager;->clear()V

    .line 15
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->clear()V

    const/4 v2, 0x0

    .line 16
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 17
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->finalizeEngine()V

    .line 18
    invoke-static {}, Lcom/sec/android/app/camera/util/BroadcastUtil;->stopHandler()V

    .line 19
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCommandReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    .line 20
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mShootingModeProvider:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    .line 21
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    .line 22
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    sget-object p0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "onEnterAnimationComplete"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onFirstStartPreviewRequested()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/LayerManagerView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->postInitialize()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mPreviewManager:Lcom/sec/android/app/camera/interfaces/PreviewManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->initBlackArea()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShootingModeProvider:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->initializeView()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShootingModeProvider:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->refreshQuickSetting()V

    .line 5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateLatestMedia()V

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateThumbnail()V

    .line 7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/BroadcastUtil;->stopVoiceRecorder(Landroid/content/Context;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onKeyDown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "onKeyDown"

    .line 2
    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isAttachFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mAttachModeManager:Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/interfaces/LayerManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_2

    .line 7
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onKeyUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "onKeyUp"

    .line 2
    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isAttachFragmentVisible()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mAttachModeManager:Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/camera/interfaces/LayerManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_6

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_5

    const/16 v1, 0x52

    if-eq p1, v1, :cond_2

    .line 7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isRecording()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_0
    const-string p0, "Ignore menu key : Capture state is CAPTURING or RECORDING"

    .line 9
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    new-instance p2, Lcom/sec/android/app/camera/z;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/z;-><init>(Lcom/sec/android/app/camera/Camera;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v2

    :cond_6
    const-string p1, "BACK KEY PRESSED!"

    .line 11
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_7

    .line 12
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_7

    return v2

    .line 13
    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object p2, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p0, "Ignore back key : preview has not started yet."

    .line 14
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 15
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p0, "Ignore back key : isCapturing"

    .line 16
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 17
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    return v2
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMultiWindowModeChanged : isInMultiWindowMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isRunning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mIsRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->getActivityInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraWindowManager:Lcom/sec/android/app/camera/CameraWindowManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraWindowManager;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 5
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/Util;->isSecureCamera(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    .line 6
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->isLaunchedFromWatch(Landroid/content/Intent;)Z

    move-result v3

    .line 7
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QR_SCANNER_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const-string p1, "onNewIntent: Restart camera, it is QR Scanner mode"

    .line 8
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/Camera;->restartCameraActivity(ZZ)V

    return-void

    :cond_0
    const-string v4, "selfie_tone_camera"

    const/4 v6, 0x0

    .line 10
    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    const-string p1, "onNewIntent : Restart camera, it is Selfie tone mode"

    .line 11
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/Camera;->restartCameraActivity(ZZ)V

    return-void

    :cond_1
    if-nez v2, :cond_2

    .line 13
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 14
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string p1, "onNewIntent : Restart camera, secure camera is finishing"

    .line 15
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-direct {p0, v5, v3}, Lcom/sec/android/app/camera/Camera;->restartCameraActivity(ZZ)V

    return-void

    .line 17
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->clearLatestMediaDataInSecureCamera()V

    .line 18
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v4

    if-nez v4, :cond_4

    .line 19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-interface {v4, v7, v8}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->updateQuickViewThumbnail(Landroid/graphics/Bitmap;I)V

    .line 20
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string p1, "onNewIntent : Restart camera, it is attach mode"

    .line 21
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 23
    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/Camera;->restartCameraActivity(ZZ)V

    return-void

    .line 24
    :cond_5
    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    invoke-virtual {p0, v6}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    goto :goto_0

    .line 26
    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsLaunchedFromOnCreate:Z

    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_7

    .line 27
    iget-object p1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SECURE_CAMERA:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 28
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    goto :goto_0

    .line 29
    :cond_7
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->isLaunchedFromWatch(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mIsLaunchedFromOnCreate:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 30
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_8
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->getActivityInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exit - onPause"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsRunning:Z

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mDvfsManager:Lcom/sec/android/app/camera/DvfsManager;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v4, 0x41b

    const/16 v5, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/DvfsManager;->acquireDvfsLock(Landroid/os/Handler;II)V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopEngine()V

    .line 6
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraGenericEventHandler:Lcom/sec/android/app/camera/CameraGenericEventHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->stop()V

    .line 7
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraWindowManager:Lcom/sec/android/app/camera/CameraWindowManager;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraWindowManager;->unregister()V

    .line 8
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraAudioManager:Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->stop()V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->showPausingView(Z)V

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopPocketChecker()V

    .line 12
    invoke-static {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->stopLocationRequest()V

    .line 13
    invoke-static {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->stop()V

    .line 14
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->unregisterCoverManagerListeners()V

    .line 15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->disable()V

    .line 16
    invoke-static {}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->clear()V

    .line 17
    invoke-static {}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->clear()V

    .line 18
    invoke-static {}, Lcom/sec/android/app/camera/provider/CameraSensorManager;->clear()V

    .line 19
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopCallStateManager()V

    .line 20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopVoiceRecognizer()V

    .line 21
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->finalizeCameraExecutorManager()V

    .line 22
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->finalizeWatchManager()V

    .line 23
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->finalizeHdmiServiceManager()V

    .line 24
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCoverManager:Lcom/sec/android/app/camera/CoverManager;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/g;->a:Lcom/sec/android/app/camera/g;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 25
    invoke-static {p0}, Lcom/sec/android/app/camera/provider/AppUpdateCheckManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/AppUpdateCheckManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/provider/AppUpdateCheckManager;->stop()V

    .line 26
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 27
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopBackgroundHandler()V

    .line 28
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraDialogManager:Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->clear()V

    .line 29
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvents(Z)V

    .line 30
    invoke-static {p0}, Lcom/sec/android/app/camera/util/SystemSettingsUtil;->restoreSystemSettings(Landroid/content/Context;)V

    .line 31
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mHapticManager:Lcom/sec/android/app/camera/HapticManager;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/HapticManager;->stop()V

    .line 32
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mDvfsManager:Lcom/sec/android/app/camera/DvfsManager;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/DvfsManager;->release()V

    .line 33
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v2

    if-nez v2, :cond_2

    .line 34
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 35
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mViewBinding:Ll4/o1;

    iget-object v2, v2, Ll4/o1;->d:Landroid/view/SurfaceView;

    invoke-virtual {v2, v0}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->resetFlags()V

    .line 37
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "onPostCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mIsLaunchedFromOnCreate:Z

    return-void
.end method

.method protected onRestart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsRestarted:Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAttachModeManager:Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "isVideoSavedOnRequestedUri"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mAttachModeManager:Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->setVideoSavedOnRequestedUri(Z)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "onResume"

    .line 2
    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    const-string v1, "VerificationLog"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->getActivityInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launch - onResume"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;ZLjava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GATE"

    const-string v3, "<GATE-M>CAMERA</GATE-M>"

    .line 6
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mIsRunning:Z

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsGalleryActivityLaunching:Z

    .line 9
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsSettingActivityLaunching:Z

    .line 10
    sget-object v3, Lcom/sec/android/app/camera/Camera;->mRecreatingCameraToFullWindow:Landroidx/lifecycle/MutableLiveData;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 11
    iget-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mIsRestarted:Z

    if-eqz v3, :cond_1

    .line 12
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->checkCustomizableSettings(Landroid/content/Context;)V

    .line 13
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startBackgroundHandler()V

    .line 14
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isNeedToRecreateActivity()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    sget-object v2, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume : Camera will be recreated - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->getActivityInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->recreate()V

    .line 17
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    .line 18
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void

    .line 19
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/util/Util;->enableMdnieCameraMode(Landroid/content/Context;Z)V

    .line 20
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->requestResumeCamera()V

    .line 21
    invoke-static {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->startLocationRequest()V

    .line 22
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->STORAGE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 23
    invoke-static {v0}, Lcom/sec/android/app/camera/util/StorageUtils;->updateStorageStatus(I)V

    .line 24
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->registerCoverManagerListeners()V

    .line 25
    invoke-static {p0}, Lcom/sec/android/app/camera/util/SystemSettingsUtil;->backUpSystemSettings(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvents(Z)V

    .line 27
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraDialogManager:Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->initialize()V

    .line 28
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraWindowManager:Lcom/sec/android/app/camera/CameraWindowManager;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraWindowManager;->initialize()V

    .line 29
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mHapticManager:Lcom/sec/android/app/camera/HapticManager;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/HapticManager;->start()V

    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startCallStateManager()V

    .line 31
    invoke-static {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->start()V

    .line 32
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mViewBinding:Ll4/o1;

    iget-object v3, v3, Ll4/o1;->d:Landroid/view/SurfaceView;

    invoke-virtual {v3, v2}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 33
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mDvfsManager:Lcom/sec/android/app/camera/DvfsManager;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/DvfsManager;->setCameraRunningHint(Landroid/os/Handler;)V

    .line 34
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    .line 35
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    .line 36
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAttachModeManager:Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mAttachModeManager:Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->isVideoSavedOnRequestedUri()Z

    move-result p0

    const-string v0, "isVideoSavedOnRequestedUri"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraWindowManager:Lcom/sec/android/app/camera/CameraWindowManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraWindowManager;->setupWindowAttributes()V

    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->getActivityInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exit - onStop"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;ZLjava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopInactivityTimer()V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopEngine()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mPreviewManager:Lcom/sec/android/app/camera/interfaces/PreviewManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->stopSurfaceManager()V

    .line 6
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsGalleryActivityLaunching:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->enableMdnieCameraMode(Landroid/content/Context;Z)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->savePreferencesCustomKey(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 9
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsSettingActivityLaunching:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/sec/android/app/camera/Camera;->mIsGalleryActivityLaunching:Z

    if-nez p0, :cond_1

    const-string p0, "7002"

    .line 10
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 11
    :cond_1
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTopResumedActivityChanged(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTopResumedActivityChanged(Z)V

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTopResumedActivityChanged : isTopResumedActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->getActivityInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mIsTopResumedActivity:Z

    if-eqz p1, :cond_3

    .line 4
    sget-object p1, Lcom/sec/android/app/camera/Camera;->mTopResumedActivityInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->getActivityInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 5
    iget-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mIsRecreating:Z

    if-eqz p1, :cond_0

    const-string p0, "onTopResumedActivityChanged : Returned because camera activity is recreating."

    .line 6
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "onTopResumedActivityChanged : Returned because camera activity is finishing."

    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_1
    iget-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mIsEngineRunning:Z

    if-nez p1, :cond_2

    const-string p1, "onTopResumedActivityChanged : Camera should try to open the camera again"

    .line 10
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->resumeCamera()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result p1

    if-nez p1, :cond_4

    .line 13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateLatestMedia()V

    .line 14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateThumbnail()V

    goto :goto_0

    .line 15
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->getActivityInfo()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/Camera;->mTopResumedActivityInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    .line 16
    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrimMemory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    const/16 v1, 0xf

    if-eq p1, v1, :cond_0

    const/16 p0, 0x14

    if-eq p1, p0, :cond_2

    const/16 p0, 0x28

    if-eq p1, p0, :cond_2

    const/16 p0, 0x3c

    if-eq p1, p0, :cond_2

    const/16 p0, 0x50

    if-eq p1, p0, :cond_2

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrimMemory : It should be checked to handle the new level : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mLowMemoryListenerList:Ljava/util/List;

    sget-object p1, Lcom/sec/android/app/camera/m;->a:Lcom/sec/android/app/camera/m;

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mLowMemoryListenerList:Ljava/util/List;

    sget-object p1, Lcom/sec/android/app/camera/k;->a:Lcom/sec/android/app/camera/k;

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isLayerInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->onUserInteraction()V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mVoiceRecognizer:Lcom/sec/android/app/camera/VoiceRecognizer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/VoiceRecognizer;->onWindowFocusChanged(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isAttachFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAttachModeManager:Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;->onWindowFocusChanged(Z)V

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public pausePresentation()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/a0;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/a0;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public playHaptic(Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mHapticManager:Lcom/sec/android/app/camera/HapticManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/HapticManager;->playHaptic(Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;)V

    return-void
.end method

.method public recreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->recreate()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAttachModeManager:Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/i;->a:Lcom/sec/android/app/camera/i;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAttachModeManager:Lcom/sec/android/app/camera/attach/AttachModeManagerImpl;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/j;->a:Lcom/sec/android/app/camera/j;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsRecreating:Z

    return-void
.end method

.method public registerFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraGenericEventHandler:Lcom/sec/android/app/camera/CameraGenericEventHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->registerFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;)V

    return-void
.end method

.method public registerGenericEventListener(Ljava/util/Set;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;",
            ">;",
            "Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraGenericEventHandler:Lcom/sec/android/app/camera/CameraGenericEventHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->registerGenericEventListener(Ljava/util/Set;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;)V

    return-void
.end method

.method public registerLowMemoryListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LowMemoryListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLowMemoryListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mLowMemoryListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method registerPreDrawListener()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraWindowManager:Lcom/sec/android/app/camera/CameraWindowManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraWindowManager;->registerPreDrawListener()V

    return-void
.end method

.method public requestHighAccuracyLocationMode()V
    .locals 3

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "requestHighAccuracyLocationMode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->isNetworkLocationProviderEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "network provider enabled is true. Set location tag on."

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    return-void

    .line 5
    :cond_0
    sget-object v1, Lr2/b;->b:Lr2/b;

    invoke-static {v1}, Lr2/d;->e(Lr2/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/PackageUtil;->isGoogleServiceEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Google Service is disable, ignore to request high accuracy location mode"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    return-void

    .line 8
    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->requestHighAccuracyLocationMode(Landroid/app/Activity;)V

    return-void
.end method

.method public requestSystemKeyEvents(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraWindowManager:Lcom/sec/android/app/camera/CameraWindowManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraWindowManager;->requestSystemKeyEvents(Z)V

    return-void
.end method

.method public restartInactivityTimer()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopInactivityTimer()V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startInactivityTimer()V

    return-void
.end method

.method public resumePresentation()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/y;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/y;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setIsResetFromSettingActivity(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mIsResetFromSettingActivity:Z

    return-void
.end method

.method setIsReturnFromAppSettingByBixby(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mIsReturnFromAppSettingByBixby:Z

    return-void
.end method

.method public setPictureSavingEventListener(Lcom/sec/android/app/camera/interfaces/CameraContext$PictureSavingEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraGenericEventHandler:Lcom/sec/android/app/camera/CameraGenericEventHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->setPictureSavingEventListener(Lcom/sec/android/app/camera/interfaces/CameraContext$PictureSavingEventListener;)V

    return-void
.end method

.method showPausingView(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camera;->updatePausingViewIcon(Z)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mViewBinding:Ll4/o1;

    iget-object v0, v0, Ll4/o1;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPausingView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mViewBinding:Ll4/o1;

    iget-object p0, p0, Ll4/o1;->a:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected startCameraSettingActivity()Z
    .locals 6

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCameraSettingActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->updateParcel()V

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "camera-parcel"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 6
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getParcelable()Landroid/os/Parcelable;

    move-result-object v2

    const-string v3, "setting"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mIsFromApplicationSettings:Z

    const-string v3, "fromApplicationSettings"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "preferenceKeyForDeepLink"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mIsFromApplicationSettings:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeatureProvider;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v5, "isRecordingMode"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mIsFromApplicationSettings:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeatureProvider;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isHighResolutionSupported(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v3

    :goto_2
    const-string v5, "isBackHighResolutionSupported"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsFromApplicationSettings:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const/16 v1, 0x7e6

    .line 14
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mIsSettingActivityLaunching:Z

    return v3

    .line 16
    :catch_0
    sget-object p0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "CameraSettingActivity not found"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public startVoiceRecognizer()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mVoiceRecognizer:Lcom/sec/android/app/camera/VoiceRecognizer;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/VoiceRecognizer;->start()V

    return-void
.end method

.method public stopInactivityTimer()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "stopInactivityTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public stopVoiceRecognizer()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mVoiceRecognizer:Lcom/sec/android/app/camera/VoiceRecognizer;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/VoiceRecognizer;->stop()V

    return-void
.end method

.method public unregisterFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraGenericEventHandler:Lcom/sec/android/app/camera/CameraGenericEventHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->unregisterFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;)V

    return-void
.end method

.method public unregisterGenericEventListener(Ljava/util/Set;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;",
            ">;",
            "Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mCameraGenericEventHandler:Lcom/sec/android/app/camera/CameraGenericEventHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->unregisterGenericEventListener(Ljava/util/Set;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;)V

    return-void
.end method

.method public unregisterLowMemoryListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LowMemoryListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mLowMemoryListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateLatestMedia()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/b0;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/b0;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method updatePausingViewIcon(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mViewBinding:Ll4/o1;

    iget-object p0, p0, Ll4/o1;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const p1, 0x7f0803c8

    goto :goto_0

    :cond_0
    const p1, 0x7f080481

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method updateRecreatingCameraInfoToFullWindow()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/Camera;->mRecreatingCameraToFullWindow:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->getActivityInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public updateSecureUriList()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/LatestMediaContent;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/LatestMediaContent;->updateSecureContentDataList()V

    return-void
.end method

.method public updateThumbnail()V
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateThumbnail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isLayerInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/x;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/x;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
