.class Lcom/sec/android/app/camera/engine/PictureProcessor;
.super Ljava/lang/Object;
.source "PictureProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;,
        Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;,
        Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PictureProcessor"


# instance fields
.field private final mBurstCaptureDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/engine/PictureProcessor$BurstCaptureData;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mDbUpdateCompleteListener:Lcom/sec/android/app/camera/interfaces/Engine$DbUpdateCompleteListener;

.field private final mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final mLastFileNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrepareSefUpdateListener:Lcom/sec/android/app/camera/interfaces/Engine$SefUpdateListener;

.field private mTakePictureTime:J

.field private final mThumbnailProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mBurstCaptureDataList:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mLastFileNameList:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 5
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 6
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 7
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mContentResolver:Landroid/content/ContentResolver;

    .line 8
    new-instance p1, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor;Lcom/sec/android/app/camera/engine/w5;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mThumbnailProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mBurstCaptureDataList:Ljava/util/List;

    return-object p0
.end method

.method private addLastFileName(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mLastFileNameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mLastFileNameList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->getFileNameOfDateTaken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->getFileNameOfDateTaken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mLastFileNameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mLastFileNameList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/sec/android/app/camera/engine/PictureProcessor;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/Engine$DbUpdateCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mDbUpdateCompleteListener:Lcom/sec/android/app/camera/interfaces/Engine$DbUpdateCompleteListener;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/Engine$SefUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mPrepareSefUpdateListener:Lcom/sec/android/app/camera/interfaces/Engine$SefUpdateListener;

    return-object p0
.end method

.method static getFileExtension(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/engine/PictureProcessor$1;->$SwitchMap$com$sec$android$app$camera$interfaces$InternalEngine$PictureSavingType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not supported picture saving type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, ".gif"

    return-object p0

    :pswitch_1
    const-string p0, ".dng"

    return-object p0

    :pswitch_2
    const-string p0, ".heic"

    return-object p0

    :pswitch_3
    const-string p0, ".jpg"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private regenerateFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object v3, p2

    .line 3
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mLastFileNameList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    return-object v3

    .line 4
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/sec/android/app/camera/util/Util;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/android/app/camera/util/Util;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New file name created : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PictureProcessor"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    move v6, v3

    move-object v3, v0

    move v0, v6

    goto :goto_0
.end method

.method private regenerateFileNameForBurst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x5f

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v3, 0x0

    move-object v4, p2

    move v5, v3

    .line 4
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mLastFileNameList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    return-object v4

    .line 5
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New burst file name created: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PictureProcessor"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v5, v4

    move-object v4, v2

    move-object v2, v6

    goto :goto_0
.end method


# virtual methods
.method createFileName(Ljava/lang/String;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/engine/PictureProcessor$1;->$SwitchMap$com$sec$android$app$camera$interfaces$InternalEngine$PictureSavingType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 p0, 0x7

    if-ne v0, p0, :cond_0

    const-string p0, "smart_scan_temp_image"

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not supported picture saving type : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getTakePictureTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/ImageUtils;->createFileName(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getFileExtension(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/PictureProcessor;->regenerateFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->addLastFileName(Ljava/lang/String;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method createFileNameForBurstCapture(Ljava/lang/String;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;JI)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {p3, p4}, Lcom/sec/android/app/camera/util/ImageUtils;->createFileName(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/4 v1, 0x0

    aput-object p5, p4, v1

    const-string p5, "%03d"

    invoke-static {p3, p5, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getFileExtension(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/PictureProcessor;->regenerateFileNameForBurst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->addLastFileName(Ljava/lang/String;)V

    return-object p1
.end method

.method createFileNameForInsertToDb(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getPictureSavingStorage(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->createFileName(Ljava/lang/String;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getActiveCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method getPictureSavingStorage(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingStorage()I

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->STORAGE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    return v1

    sget-object v0, Lcom/sec/android/app/camera/engine/PictureProcessor$1;->$SwitchMap$com$sec$android$app$camera$interfaces$InternalEngine$PictureSavingType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not supported picture saving type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->STORAGE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :pswitch_1
    return v1

    .line 6
    :pswitch_2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRawSingleCaptureEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->STORAGE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method getQueuedTaskCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method getTakePictureTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mTakePictureTime:J

    return-wide v0
.end method

.method getThumbnailProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mThumbnailProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

    return-object p0
.end method

.method initialize()V
    .locals 8

    .line 1
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v7, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mThumbnailProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;)V

    return-void
.end method

.method insertToDb(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V
    .locals 5

    const-string v0, "InsertToDb"

    .line 1
    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "Capture - InsertToDb"

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;IZ)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->createFileNameForInsertToDb(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getPictureSavingStorage(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)I

    move-result p1

    .line 6
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v3, v4, v1, p1}, Lcom/sec/android/app/camera/util/DatabaseUtil;->insertToDb(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v3

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/engine/LastContentData;

    .line 8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/LastContentData;->clear()V

    .line 9
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/engine/LastContentData;->setContentSecMpUri(Landroid/net/Uri;)V

    .line 10
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/engine/LastContentData;->setContentMpUri(Landroid/net/Uri;)V

    .line 11
    sget-object v3, Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;->IMAGE:Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/engine/LastContentData;->setContentType(Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;)V

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/LastContentData;->setFilePath(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const/4 p1, 0x0

    invoke-static {v2, p0, p1}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;IZ)V

    .line 14
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method isBurstRequested()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 3
    check-cast v0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->isBurstTask()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method process(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V
    .locals 10

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    const-string p0, "PictureProcessor"

    const-string p1, "process : cannot execute."

    .line 8
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_0
    new-instance v9, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getTakePictureTime()J

    move-result-wide v5

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result v7

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor;Ljava/lang/String;Ljava/lang/String;JILcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method process(Ljava/nio/ByteBuffer;IILcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V
    .locals 12

    move-object v1, p0

    .line 4
    iget-object v10, v1, Lcom/sec/android/app/camera/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v10, :cond_0

    const-string v0, "PictureProcessor"

    const-string v1, "process : cannot execute."

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_0
    new-instance v11, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getTakePictureTime()J

    move-result-wide v3

    iget-object v0, v1, Lcom/sec/android/app/camera/engine/PictureProcessor;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result v5

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    move v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor;Ljava/nio/ByteBuffer;JIIILcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method process(Ljava/nio/ByteBuffer;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    const-string p0, "PictureProcessor"

    const-string p1, "process : cannot execute."

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    new-instance v8, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getTakePictureTime()J

    move-result-wide v4

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result v6

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor;Ljava/nio/ByteBuffer;JILcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method process(Ljava/nio/ByteBuffer;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V
    .locals 10

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    const-string p0, "PictureProcessor"

    const-string p1, "process : cannot execute."

    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 12
    :cond_0
    new-instance v9, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getTakePictureTime()J

    move-result-wide v4

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result v6

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor;Ljava/nio/ByteBuffer;JILcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method process(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V
    .locals 11

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v2, "PictureProcessor"

    if-nez v0, :cond_0

    const-string v0, "process : cannot execute."

    .line 14
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getFileExtension(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/camera/util/ImageUtils;->HIDDEN_FILE_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-static {v3}, Lcom/sec/android/app/camera/util/ImageUtils;->makeDirectory(Ljava/lang/String;)Z

    .line 19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getTakePictureTime()J

    move-result-wide v5

    invoke-static {v3, v0, v5, v6, p1}, Lcom/sec/android/app/camera/util/ImageUtils;->writeImage(Ljava/lang/String;Ljava/lang/String;JLjava/nio/ByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "process : failed to writing image to file."

    .line 20
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 21
    :cond_1
    iget-object v9, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v10, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getTakePictureTime()J

    move-result-wide v5

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result v7

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move-object v3, v4

    move-wide v4, v5

    move v6, v7

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor;Ljava/nio/ByteBuffer;Ljava/lang/String;JILcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method processPicture(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/engine/LastContentData;

    .line 2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/LastContentData;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v2, v0, p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->process(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V

    return-void
.end method

.method release()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v1, "PictureProcessor"

    if-nez v0, :cond_0

    const-string p0, "release : returned because executor has not been initialized."

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v2, 0x3c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "release : awaitTermination is completed."

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "PictureSavingTask has not been completed until 60 sec timeout."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "release : awaitTermination interrupted."

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mThumbnailProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->g(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;)V

    return-void
.end method

.method setDbUpdateCompleteListener(Lcom/sec/android/app/camera/interfaces/Engine$DbUpdateCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mDbUpdateCompleteListener:Lcom/sec/android/app/camera/interfaces/Engine$DbUpdateCompleteListener;

    return-void
.end method

.method setPrepareSefUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$SefUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mPrepareSefUpdateListener:Lcom/sec/android/app/camera/interfaces/Engine$SefUpdateListener;

    return-void
.end method

.method updateBurstPictureDB(I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    const-string p0, "PictureProcessor"

    const-string p1, "updateBurstPictureDB : cannot execute."

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    new-instance v11, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->BURST_DB_UPDATE_ONLY:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    const/4 v10, 0x0

    move-object v1, v11

    move-object v2, p0

    move v7, p1

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor;Ljava/nio/ByteBuffer;JIIILcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V

    invoke-virtual {v0, v11}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method updateTakePictureTime()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getCurrentTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mTakePictureTime:J

    return-void
.end method
