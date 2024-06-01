.class abstract Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;
.super Ljava/lang/Object;
.source "AbstractCameraSettings.java"


# static fields
.field private static final CSC_KEY_CAMERA_FLASH:Ljava/lang/String; = "csc_pref_camera_flash_key"

.field private static final CSC_KEY_SETUP_STORAGE:Ljava/lang/String; = "csc_pref_setup_storage_key"

.field private static final TAG:Ljava/lang/String; = "AbstractCameraSettings"


# instance fields
.field protected final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mDefaultValueGetterMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;",
            "Lcom/sec/android/app/camera/setting/repository/ValueGetter;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingKeyMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;",
            "Lcom/sec/android/app/camera/setting/repository/SettingValue;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSettingValueGetterMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;",
            "Lcom/sec/android/app/camera/setting/repository/ValueGetter;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSettingValueSetterMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;",
            "Lcom/sec/android/app/camera/setting/repository/ValueSetter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/setting/repository/SettingValueObserver;)V
    .locals 10

    .line 1
    const-class v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    .line 3
    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    .line 4
    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    .line 5
    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    const-string v0, "Create AbstractCameraSettings"

    .line 6
    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AbstractCameraSettings : Start["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AbstractCameraSettings"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->initializeDefaultValueGetterMap()V

    .line 10
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 11
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->values()[Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    move-result-object v2

    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v2, v6

    .line 12
    new-instance v8, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-direct {v8, p1, p2, v7}, Lcom/sec/android/app/camera/setting/repository/SettingValue;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/setting/repository/SettingValueObserver;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V

    .line 13
    iget-object v9, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v9, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v9, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->overrideValueGetterMap()V

    .line 17
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->overrideValueSetterMap()V

    .line 18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "AbstractCameraSettings : End["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method public static synthetic A()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$177()I

    move-result v0

    return v0
.end method

.method public static synthetic A0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$394()I

    move-result v0

    return v0
.end method

.method public static synthetic A1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$179()I

    move-result v0

    return v0
.end method

.method public static synthetic A2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$315()I

    move-result v0

    return v0
.end method

.method public static synthetic A3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$145()I

    move-result v0

    return v0
.end method

.method public static synthetic A4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$254()I

    move-result v0

    return v0
.end method

.method public static synthetic A5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$306()I

    move-result v0

    return v0
.end method

.method public static synthetic A6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$416()I

    move-result v0

    return v0
.end method

.method public static synthetic A7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$231()I

    move-result v0

    return v0
.end method

.method public static synthetic B()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$435()I

    move-result v0

    return v0
.end method

.method public static synthetic B0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$100()I

    move-result v0

    return v0
.end method

.method public static synthetic B1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$230()I

    move-result v0

    return v0
.end method

.method public static synthetic B2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$426()I

    move-result v0

    return v0
.end method

.method public static synthetic B3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$340()I

    move-result v0

    return v0
.end method

.method public static synthetic B4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$158()I

    move-result v0

    return v0
.end method

.method public static synthetic B5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$174()I

    move-result v0

    return v0
.end method

.method public static synthetic B6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$157()I

    move-result v0

    return v0
.end method

.method public static synthetic B7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$417()I

    move-result v0

    return v0
.end method

.method public static synthetic C()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$159()I

    move-result v0

    return v0
.end method

.method public static synthetic C0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$413()I

    move-result v0

    return v0
.end method

.method public static synthetic C1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$133()I

    move-result v0

    return v0
.end method

.method public static synthetic C2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$215()I

    move-result v0

    return v0
.end method

.method public static synthetic C3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$114()I

    move-result v0

    return v0
.end method

.method public static synthetic C4(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->setFrontCameraResolution(I)V

    return-void
.end method

.method public static synthetic C5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$146()I

    move-result v0

    return v0
.end method

.method public static synthetic C6(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->setBackCamcorderProResolution(I)V

    return-void
.end method

.method public static synthetic C7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$1()I

    move-result v0

    return v0
.end method

.method public static synthetic D()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$121()I

    move-result v0

    return v0
.end method

.method public static synthetic D0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$313()I

    move-result v0

    return v0
.end method

.method public static synthetic D1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$265()I

    move-result v0

    return v0
.end method

.method public static synthetic D2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$295()I

    move-result v0

    return v0
.end method

.method public static synthetic D3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$44()I

    move-result v0

    return v0
.end method

.method public static synthetic D4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$444()I

    move-result v0

    return v0
.end method

.method public static synthetic D5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$94()I

    move-result v0

    return v0
.end method

.method public static synthetic D6(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$274()I

    move-result p0

    return p0
.end method

.method public static synthetic D7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$51()I

    move-result v0

    return v0
.end method

.method public static synthetic E()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$455()I

    move-result v0

    return v0
.end method

.method public static synthetic E0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$35()I

    move-result v0

    return v0
.end method

.method public static synthetic E1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$153()I

    move-result v0

    return v0
.end method

.method public static synthetic E2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$199()I

    move-result v0

    return v0
.end method

.method public static synthetic E3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$419()I

    move-result v0

    return v0
.end method

.method public static synthetic E4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$257()I

    move-result v0

    return v0
.end method

.method public static synthetic E5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$391()I

    move-result v0

    return v0
.end method

.method public static synthetic E6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$229()I

    move-result v0

    return v0
.end method

.method public static synthetic E7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$310()I

    move-result v0

    return v0
.end method

.method public static synthetic F()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$148()I

    move-result v0

    return v0
.end method

.method public static synthetic F0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$141()I

    move-result v0

    return v0
.end method

.method public static synthetic F1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$189()I

    move-result v0

    return v0
.end method

.method public static synthetic F2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$69()I

    move-result v0

    return v0
.end method

.method public static synthetic F3(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getDefaultNightHyperLapseAuto()I

    move-result p0

    return p0
.end method

.method public static synthetic F4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$362()I

    move-result v0

    return v0
.end method

.method public static synthetic F5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$178()I

    move-result v0

    return v0
.end method

.method public static synthetic F6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$346()I

    move-result v0

    return v0
.end method

.method public static synthetic F7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$29()I

    move-result v0

    return v0
.end method

.method public static synthetic G()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$427()I

    move-result v0

    return v0
.end method

.method public static synthetic G0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$421()I

    move-result v0

    return v0
.end method

.method public static synthetic G1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$351()I

    move-result v0

    return v0
.end method

.method public static synthetic G2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$202()I

    move-result v0

    return v0
.end method

.method public static synthetic G3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$353()I

    move-result v0

    return v0
.end method

.method public static synthetic G4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$425()I

    move-result v0

    return v0
.end method

.method public static synthetic G5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$290()I

    move-result v0

    return v0
.end method

.method public static synthetic G6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$263()I

    move-result v0

    return v0
.end method

.method public static synthetic G7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$248()I

    move-result v0

    return v0
.end method

.method public static synthetic H()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$33()I

    move-result v0

    return v0
.end method

.method public static synthetic H0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$326()I

    move-result v0

    return v0
.end method

.method public static synthetic H1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$338()I

    move-result v0

    return v0
.end method

.method public static synthetic H2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$0()I

    move-result v0

    return v0
.end method

.method public static synthetic H3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$460()I

    move-result v0

    return v0
.end method

.method public static synthetic H4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$448()I

    move-result v0

    return v0
.end method

.method public static synthetic H5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$56()I

    move-result v0

    return v0
.end method

.method public static synthetic H6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$314()I

    move-result v0

    return v0
.end method

.method public static synthetic H7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$428()I

    move-result v0

    return v0
.end method

.method public static synthetic I()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$373()I

    move-result v0

    return v0
.end method

.method public static synthetic I0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$201()I

    move-result v0

    return v0
.end method

.method public static synthetic I1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$183()I

    move-result v0

    return v0
.end method

.method public static synthetic I2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$221()I

    move-result v0

    return v0
.end method

.method public static synthetic I3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$328()I

    move-result v0

    return v0
.end method

.method public static synthetic I4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$401()I

    move-result v0

    return v0
.end method

.method public static synthetic I5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$204()I

    move-result v0

    return v0
.end method

.method public static synthetic I6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$25()I

    move-result v0

    return v0
.end method

.method public static synthetic I7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$77()I

    move-result v0

    return v0
.end method

.method public static synthetic J()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$49()I

    move-result v0

    return v0
.end method

.method public static synthetic J0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$294()I

    move-result v0

    return v0
.end method

.method public static synthetic J1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$98()I

    move-result v0

    return v0
.end method

.method public static synthetic J2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$223()I

    move-result v0

    return v0
.end method

.method public static synthetic J3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$11()I

    move-result v0

    return v0
.end method

.method public static synthetic J4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$218()I

    move-result v0

    return v0
.end method

.method public static synthetic J5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$433()I

    move-result v0

    return v0
.end method

.method public static synthetic J6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$238()I

    move-result v0

    return v0
.end method

.method public static synthetic J7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$261()I

    move-result v0

    return v0
.end method

.method public static synthetic K()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$185()I

    move-result v0

    return v0
.end method

.method public static synthetic K0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$195()I

    move-result v0

    return v0
.end method

.method public static synthetic K1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$329()I

    move-result v0

    return v0
.end method

.method public static synthetic K2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$341()I

    move-result v0

    return v0
.end method

.method public static synthetic K3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$86()I

    move-result v0

    return v0
.end method

.method public static synthetic K4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$144()I

    move-result v0

    return v0
.end method

.method public static synthetic K5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$75()I

    move-result v0

    return v0
.end method

.method public static synthetic K6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$402()I

    move-result v0

    return v0
.end method

.method public static synthetic K7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$6()I

    move-result v0

    return v0
.end method

.method public static synthetic L()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$360()I

    move-result v0

    return v0
.end method

.method public static synthetic L0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$407()I

    move-result v0

    return v0
.end method

.method public static synthetic L1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$82()I

    move-result v0

    return v0
.end method

.method public static synthetic L2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$81()I

    move-result v0

    return v0
.end method

.method public static synthetic L3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$342()I

    move-result v0

    return v0
.end method

.method public static synthetic L4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$169()I

    move-result v0

    return v0
.end method

.method public static synthetic L5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$167()I

    move-result v0

    return v0
.end method

.method public static synthetic L6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$317()I

    move-result v0

    return v0
.end method

.method public static synthetic L7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$50()I

    move-result v0

    return v0
.end method

.method public static synthetic M()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$385()I

    move-result v0

    return v0
.end method

.method public static synthetic M0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$240()I

    move-result v0

    return v0
.end method

.method public static synthetic M1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$225()I

    move-result v0

    return v0
.end method

.method public static synthetic M2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$454()I

    move-result v0

    return v0
.end method

.method public static synthetic M3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$184()I

    move-result v0

    return v0
.end method

.method public static synthetic M4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$210()I

    move-result v0

    return v0
.end method

.method public static synthetic M5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$24()I

    move-result v0

    return v0
.end method

.method public static synthetic M6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$96()I

    move-result v0

    return v0
.end method

.method public static synthetic M7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$301()I

    move-result v0

    return v0
.end method

.method public static synthetic N()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$8()I

    move-result v0

    return v0
.end method

.method public static synthetic N0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$91()I

    move-result v0

    return v0
.end method

.method public static synthetic N1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$137()I

    move-result v0

    return v0
.end method

.method public static synthetic N2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$55()I

    move-result v0

    return v0
.end method

.method public static synthetic N3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$459()I

    move-result v0

    return v0
.end method

.method public static synthetic N4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$316()I

    move-result v0

    return v0
.end method

.method public static synthetic N5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$370()I

    move-result v0

    return v0
.end method

.method public static synthetic N6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$120()I

    move-result v0

    return v0
.end method

.method public static synthetic N7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$381()I

    move-result v0

    return v0
.end method

.method public static synthetic O()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$236()I

    move-result v0

    return v0
.end method

.method public static synthetic O0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$321()I

    move-result v0

    return v0
.end method

.method public static synthetic O1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$440()I

    move-result v0

    return v0
.end method

.method public static synthetic O2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$122()I

    move-result v0

    return v0
.end method

.method public static synthetic O3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$318()I

    move-result v0

    return v0
.end method

.method public static synthetic O4(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$42()I

    move-result p0

    return p0
.end method

.method public static synthetic O5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$424()I

    move-result v0

    return v0
.end method

.method public static synthetic O6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$337()I

    move-result v0

    return v0
.end method

.method public static synthetic O7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$408()I

    move-result v0

    return v0
.end method

.method public static synthetic P()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$422()I

    move-result v0

    return v0
.end method

.method public static synthetic P0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$85()I

    move-result v0

    return v0
.end method

.method public static synthetic P1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$403()I

    move-result v0

    return v0
.end method

.method public static synthetic P2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$244()I

    move-result v0

    return v0
.end method

.method public static synthetic P3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$129()I

    move-result v0

    return v0
.end method

.method public static synthetic P4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$363()I

    move-result v0

    return v0
.end method

.method public static synthetic P5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$356()I

    move-result v0

    return v0
.end method

.method public static synthetic P6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$387()I

    move-result v0

    return v0
.end method

.method public static synthetic P7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$78()I

    move-result v0

    return v0
.end method

.method public static synthetic Q()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$300()I

    move-result v0

    return v0
.end method

.method public static synthetic Q0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$312()I

    move-result v0

    return v0
.end method

.method public static synthetic Q1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$171()I

    move-result v0

    return v0
.end method

.method public static synthetic Q2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$267()I

    move-result v0

    return v0
.end method

.method public static synthetic Q3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$258()I

    move-result v0

    return v0
.end method

.method public static synthetic Q4(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getSoftenPicture()I

    move-result p0

    return p0
.end method

.method public static synthetic Q5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$366()I

    move-result v0

    return v0
.end method

.method public static synthetic Q6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$259()I

    move-result v0

    return v0
.end method

.method public static synthetic Q7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$246()I

    move-result v0

    return v0
.end method

.method public static synthetic R()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$281()I

    move-result v0

    return v0
.end method

.method public static synthetic R0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$228()I

    move-result v0

    return v0
.end method

.method public static synthetic R1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$303()I

    move-result v0

    return v0
.end method

.method public static synthetic R2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$206()I

    move-result v0

    return v0
.end method

.method public static synthetic R3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$168()I

    move-result v0

    return v0
.end method

.method public static synthetic R4(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getBackCamcorderResolution()I

    move-result p0

    return p0
.end method

.method public static synthetic R5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$438()I

    move-result v0

    return v0
.end method

.method public static synthetic R6(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->setBackCameraResolution(I)V

    return-void
.end method

.method public static synthetic R7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$134()I

    move-result v0

    return v0
.end method

.method public static synthetic S()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$117()I

    move-result v0

    return v0
.end method

.method public static synthetic S0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$227()I

    move-result v0

    return v0
.end method

.method public static synthetic S1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$451()I

    move-result v0

    return v0
.end method

.method public static synthetic S2(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getDefaultSuperSteadyResolution()I

    move-result p0

    return p0
.end method

.method public static synthetic S3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$43()I

    move-result v0

    return v0
.end method

.method public static synthetic S4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$30()I

    move-result v0

    return v0
.end method

.method public static synthetic S5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$339()I

    move-result v0

    return v0
.end method

.method public static synthetic S6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$293()I

    move-result v0

    return v0
.end method

.method public static synthetic S7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$372()I

    move-result v0

    return v0
.end method

.method public static synthetic T()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$13()I

    move-result v0

    return v0
.end method

.method public static synthetic T0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$119()I

    move-result v0

    return v0
.end method

.method public static synthetic T1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$291()I

    move-result v0

    return v0
.end method

.method public static synthetic T2(I)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$overrideValueSetterMap$462(I)V

    return-void
.end method

.method public static synthetic T3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$243()I

    move-result v0

    return v0
.end method

.method public static synthetic T4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$388()I

    move-result v0

    return v0
.end method

.method public static synthetic T5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$106()I

    move-result v0

    return v0
.end method

.method public static synthetic T6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$125()I

    move-result v0

    return v0
.end method

.method public static synthetic T7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$80()I

    move-result v0

    return v0
.end method

.method public static synthetic U(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getFrontCamcorderProResolution()I

    move-result p0

    return p0
.end method

.method public static synthetic U0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$166()I

    move-result v0

    return v0
.end method

.method public static synthetic U1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$208()I

    move-result v0

    return v0
.end method

.method public static synthetic U2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$239()I

    move-result v0

    return v0
.end method

.method public static synthetic U3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$334()I

    move-result v0

    return v0
.end method

.method public static synthetic U4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$175()I

    move-result v0

    return v0
.end method

.method public static synthetic U5(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getTimerShotCount()I

    move-result p0

    return p0
.end method

.method public static synthetic U6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$180()I

    move-result v0

    return v0
.end method

.method public static synthetic U7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$220()I

    move-result v0

    return v0
.end method

.method public static synthetic V()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$101()I

    move-result v0

    return v0
.end method

.method public static synthetic V0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$434()I

    move-result v0

    return v0
.end method

.method public static synthetic V1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$17()I

    move-result v0

    return v0
.end method

.method public static synthetic V2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$418()I

    move-result v0

    return v0
.end method

.method public static synthetic V3(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getDefaultFrontNightHyperLapseAuto()I

    move-result p0

    return p0
.end method

.method public static synthetic V4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$31()I

    move-result v0

    return v0
.end method

.method public static synthetic V5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$368()I

    move-result v0

    return v0
.end method

.method public static synthetic V6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$423()I

    move-result v0

    return v0
.end method

.method public static synthetic V7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$324()I

    move-result v0

    return v0
.end method

.method public static synthetic W(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getDefaultBackCameraBokehLensType()I

    move-result p0

    return p0
.end method

.method public static synthetic W0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$93()I

    move-result v0

    return v0
.end method

.method public static synthetic W1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$70()I

    move-result v0

    return v0
.end method

.method public static synthetic W2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$57()I

    move-result v0

    return v0
.end method

.method public static synthetic W3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$22()I

    move-result v0

    return v0
.end method

.method public static synthetic W4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$62()I

    move-result v0

    return v0
.end method

.method public static synthetic W5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$139()I

    move-result v0

    return v0
.end method

.method public static synthetic W6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$392()I

    move-result v0

    return v0
.end method

.method public static synthetic W7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$173()I

    move-result v0

    return v0
.end method

.method public static synthetic X()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$12()I

    move-result v0

    return v0
.end method

.method public static synthetic X0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$349()I

    move-result v0

    return v0
.end method

.method public static synthetic X1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$445()I

    move-result v0

    return v0
.end method

.method public static synthetic X2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$196()I

    move-result v0

    return v0
.end method

.method public static synthetic X3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$452()I

    move-result v0

    return v0
.end method

.method public static synthetic X4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$219()I

    move-result v0

    return v0
.end method

.method public static synthetic X5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$332()I

    move-result v0

    return v0
.end method

.method public static synthetic X6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$352()I

    move-result v0

    return v0
.end method

.method public static synthetic X7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$58()I

    move-result v0

    return v0
.end method

.method public static synthetic Y()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$436()I

    move-result v0

    return v0
.end method

.method public static synthetic Y0(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getFrontCamcorderResolution()I

    move-result p0

    return p0
.end method

.method public static synthetic Y1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$283()I

    move-result v0

    return v0
.end method

.method public static synthetic Y2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$140()I

    move-result v0

    return v0
.end method

.method public static synthetic Y3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$256()I

    move-result v0

    return v0
.end method

.method public static synthetic Y4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$336()I

    move-result v0

    return v0
.end method

.method public static synthetic Y5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$191()I

    move-result v0

    return v0
.end method

.method public static synthetic Y6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$190()I

    move-result v0

    return v0
.end method

.method public static synthetic Y7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$235()I

    move-result v0

    return v0
.end method

.method public static synthetic Z()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$399()I

    move-result v0

    return v0
.end method

.method public static synthetic Z0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$32()I

    move-result v0

    return v0
.end method

.method public static synthetic Z1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$247()I

    move-result v0

    return v0
.end method

.method public static synthetic Z2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$335()I

    move-result v0

    return v0
.end method

.method public static synthetic Z3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$23()I

    move-result v0

    return v0
.end method

.method public static synthetic Z4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$441()I

    move-result v0

    return v0
.end method

.method public static synthetic Z5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$275()I

    move-result v0

    return v0
.end method

.method public static synthetic Z6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$99()I

    move-result v0

    return v0
.end method

.method public static synthetic Z7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$48()I

    move-result v0

    return v0
.end method

.method public static synthetic a()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$355()I

    move-result v0

    return v0
.end method

.method public static synthetic a0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$21()I

    move-result v0

    return v0
.end method

.method public static synthetic a1(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getBackCamcorderSuperSteadyResolution()I

    move-result p0

    return p0
.end method

.method public static synthetic a2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$14()I

    move-result v0

    return v0
.end method

.method public static synthetic a3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$128()I

    move-result v0

    return v0
.end method

.method public static synthetic a4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$369()I

    move-result v0

    return v0
.end method

.method public static synthetic a5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$104()I

    move-result v0

    return v0
.end method

.method public static synthetic a6(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->setQuickLaunch(I)V

    return-void
.end method

.method public static synthetic a7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$359()I

    move-result v0

    return v0
.end method

.method public static synthetic a8()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$443()I

    move-result v0

    return v0
.end method

.method public static synthetic b()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$361()I

    move-result v0

    return v0
.end method

.method public static synthetic b0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$126()I

    move-result v0

    return v0
.end method

.method public static synthetic b1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$87()I

    move-result v0

    return v0
.end method

.method public static synthetic b2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$90()I

    move-result v0

    return v0
.end method

.method public static synthetic b3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$384()I

    move-result v0

    return v0
.end method

.method public static synthetic b4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$5()I

    move-result v0

    return v0
.end method

.method public static synthetic b5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$393()I

    move-result v0

    return v0
.end method

.method public static synthetic b6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$118()I

    move-result v0

    return v0
.end method

.method public static synthetic b7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$88()I

    move-result v0

    return v0
.end method

.method public static synthetic b8()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$288()I

    move-result v0

    return v0
.end method

.method public static synthetic c()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$217()I

    move-result v0

    return v0
.end method

.method public static synthetic c0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$264()I

    move-result v0

    return v0
.end method

.method public static synthetic c1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$59()I

    move-result v0

    return v0
.end method

.method public static synthetic c2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$200()I

    move-result v0

    return v0
.end method

.method public static synthetic c3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$298()I

    move-result v0

    return v0
.end method

.method public static synthetic c4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$269()I

    move-result v0

    return v0
.end method

.method public static synthetic c5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$411()I

    move-result v0

    return v0
.end method

.method public static synthetic c6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$66()I

    move-result v0

    return v0
.end method

.method public static synthetic c7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$28()I

    move-result v0

    return v0
.end method

.method public static synthetic c8()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$170()I

    move-result v0

    return v0
.end method

.method public static synthetic d()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$333()I

    move-result v0

    return v0
.end method

.method public static synthetic d0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$292()I

    move-result v0

    return v0
.end method

.method public static synthetic d1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$15()I

    move-result v0

    return v0
.end method

.method public static synthetic d2(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getDefaultQuickLaunch()I

    move-result p0

    return p0
.end method

.method public static synthetic d3(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$37()I

    move-result p0

    return p0
.end method

.method public static synthetic d4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$449()I

    move-result v0

    return v0
.end method

.method public static synthetic d5(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$40()I

    move-result p0

    return p0
.end method

.method public static synthetic d6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$252()I

    move-result v0

    return v0
.end method

.method public static synthetic d7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$412()I

    move-result v0

    return v0
.end method

.method public static synthetic d8()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$410()I

    move-result v0

    return v0
.end method

.method public static synthetic e()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$450()I

    move-result v0

    return v0
.end method

.method public static synthetic e0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$234()I

    move-result v0

    return v0
.end method

.method public static synthetic e1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$109()I

    move-result v0

    return v0
.end method

.method public static synthetic e2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$350()I

    move-result v0

    return v0
.end method

.method public static synthetic e3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$105()I

    move-result v0

    return v0
.end method

.method public static synthetic e4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$253()I

    move-result v0

    return v0
.end method

.method public static synthetic e5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$112()I

    move-result v0

    return v0
.end method

.method public static synthetic e6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$382()I

    move-result v0

    return v0
.end method

.method public static synthetic e7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$398()I

    move-result v0

    return v0
.end method

.method public static synthetic e8()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$212()I

    move-result v0

    return v0
.end method

.method public static synthetic f()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$237()I

    move-result v0

    return v0
.end method

.method public static synthetic f0(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$271()I

    move-result p0

    return p0
.end method

.method public static synthetic f1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$272()I

    move-result v0

    return v0
.end method

.method public static synthetic f2(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getQuickLaunch()I

    move-result p0

    return p0
.end method

.method public static synthetic f3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$102()I

    move-result v0

    return v0
.end method

.method public static synthetic f4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$60()I

    move-result v0

    return v0
.end method

.method public static synthetic f5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$143()I

    move-result v0

    return v0
.end method

.method public static synthetic f6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$277()I

    move-result v0

    return v0
.end method

.method public static synthetic f7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$108()I

    move-result v0

    return v0
.end method

.method public static synthetic f8()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$26()I

    move-result v0

    return v0
.end method

.method public static synthetic g()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$203()I

    move-result v0

    return v0
.end method

.method public static synthetic g0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$344()I

    move-result v0

    return v0
.end method

.method public static synthetic g1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$176()I

    move-result v0

    return v0
.end method

.method public static synthetic g2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$209()I

    move-result v0

    return v0
.end method

.method public static synthetic g3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$255()I

    move-result v0

    return v0
.end method

.method public static synthetic g4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$163()I

    move-result v0

    return v0
.end method

.method public static synthetic g5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$397()I

    move-result v0

    return v0
.end method

.method public static synthetic g6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$415()I

    move-result v0

    return v0
.end method

.method public static synthetic g7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$404()I

    move-result v0

    return v0
.end method

.method public static synthetic g8()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$447()I

    move-result v0

    return v0
.end method

.method private getBackCamcorderProResolution()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->get()I

    move-result p0

    return p0
.end method

.method private getBackCamcorderResolution()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->get()I

    move-result p0

    return p0
.end method

.method private getBackCamcorderSuperSteadyResolution()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->get()I

    move-result p0

    return p0
.end method

.method private getBackCameraResolution()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->get()I

    move-result p0

    return p0
.end method

.method private getDefaultBackCameraBokehLensType()I
    .locals 0

    .line 1
    sget-object p0, Lr2/b;->K:Lr2/b;

    invoke-static {p0}, Lr2/d;->e(Lr2/b;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2
    sget-object p0, Lr2/b;->r:Lr2/b;

    invoke-static {p0}, Lr2/d;->e(Lr2/b;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 3
    :cond_0
    sget-object p0, Lr2/b;->L:Lr2/b;

    invoke-static {p0}, Lr2/d;->e(Lr2/b;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getDefaultBackCameraPanoramaLensType()I
    .locals 0

    sget-object p0, Lr2/b;->C:Lr2/b;

    invoke-static {p0}, Lr2/d;->e(Lr2/b;)Z

    move-result p0

    return p0
.end method

.method private getDefaultBackFlashMode()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "csc_pref_camera_flash_key"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDefaultBackFlashMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractCameraSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private getDefaultFrontNightHyperLapseAuto()I
    .locals 0

    sget-object p0, Lr2/b;->y0:Lr2/b;

    invoke-static {p0}, Lr2/d;->e(Lr2/b;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getDefaultMotionSpeed()I
    .locals 0

    sget-object p0, Lr2/b;->J0:Lr2/b;

    invoke-static {p0}, Lr2/d;->e(Lr2/b;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getDefaultNightHyperLapseAuto()I
    .locals 0

    sget-object p0, Lr2/b;->J0:Lr2/b;

    invoke-static {p0}, Lr2/d;->e(Lr2/b;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getDefaultQuickLaunch()I
    .locals 3

    .line 1
    sget-object p0, Lr2/b;->G0:Lr2/b;

    invoke-static {p0}, Lr2/d;->e(Lr2/b;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lr2/b;->g1:Lr2/b;

    invoke-static {v0}, Lr2/d;->e(Lr2/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isSoftwareNavigationBar()Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v2

    .line 3
    :cond_1
    invoke-static {p0}, Lr2/d;->e(Lr2/b;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lr2/b;->g1:Lr2/b;

    invoke-static {p0}, Lr2/d;->e(Lr2/b;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method private getDefaultStorage()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "csc_pref_setup_storage_key"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDefaultStorage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractCameraSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private getDefaultSuperSlowMotionFrcTime()I
    .locals 1

    sget-object p0, Lr2/h;->y:Lr2/h;

    invoke-static {p0}, Lr2/d;->b(Lr2/h;)I

    move-result p0

    const/16 v0, 0x190

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private getDefaultSuperSteadyResolution()I
    .locals 2

    .line 1
    sget-object p0, Lr2/l;->d:Lr2/l;

    invoke-static {p0}, Lr2/d;->c(Lr2/l;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderSuperVideoStabilizationAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result p0

    return p0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->is60FpsCamcorderResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080_60FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    .line 5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderSuperVideoStabilizationAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result p0

    return p0

    .line 7
    :cond_1
    sget-object p0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result p0

    return p0
.end method

.method private getFrontCamcorderProResolution()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_PRO_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->get()I

    move-result p0

    return p0
.end method

.method private getFrontCamcorderResolution()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->get()I

    move-result p0

    return p0
.end method

.method private getFrontCameraResolution()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->get()I

    move-result p0

    return p0
.end method

.method private getQuickLaunch()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    const-string v1, "double_tab_launch"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 4
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method private getSoftenPicture()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SOFTEN_PICTURE_V2:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->isAvailable(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    invoke-virtual {p0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->get()I

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SOFTEN_PICTURE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->get()I

    move-result p0

    return p0
.end method

.method private getTimerShotCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->TIMER_INTERVAL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->isAvailable(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    invoke-virtual {p0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->get()I

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->TIMER_SHOT_COUNT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->get()I

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->setBackCamcorderSuperSteadyResolution(I)V

    return-void
.end method

.method public static synthetic h0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$432()I

    move-result v0

    return v0
.end method

.method public static synthetic h1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$83()I

    move-result v0

    return v0
.end method

.method public static synthetic h2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$309()I

    move-result v0

    return v0
.end method

.method public static synthetic h3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$71()I

    move-result v0

    return v0
.end method

.method public static synthetic h4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$150()I

    move-result v0

    return v0
.end method

.method public static synthetic h5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$409()I

    move-result v0

    return v0
.end method

.method public static synthetic h6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$20()I

    move-result v0

    return v0
.end method

.method public static synthetic h7(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getDefaultBackFlashMode()I

    move-result p0

    return p0
.end method

.method public static synthetic h8()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$302()I

    move-result v0

    return v0
.end method

.method public static synthetic i()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$67()I

    move-result v0

    return v0
.end method

.method public static synthetic i0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$45()I

    move-result v0

    return v0
.end method

.method public static synthetic i1(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getDefaultStorage()I

    move-result p0

    return p0
.end method

.method public static synthetic i2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$124()I

    move-result v0

    return v0
.end method

.method public static synthetic i3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$395()I

    move-result v0

    return v0
.end method

.method public static synthetic i4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$152()I

    move-result v0

    return v0
.end method

.method public static synthetic i5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$357()I

    move-result v0

    return v0
.end method

.method public static synthetic i6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$457()I

    move-result v0

    return v0
.end method

.method public static synthetic i7(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->setFrontCamcorderProResolution(I)V

    return-void
.end method

.method public static synthetic i8()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$142()I

    move-result v0

    return v0
.end method

.method private initializeDefaultValueGetterMap()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ADAPTIVE_LENS_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/n3;->a:Lcom/sec/android/app/camera/setting/repository/n3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ADAPTIVE_LENS_STATE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/jd;->a:Lcom/sec/android/app/camera/setting/repository/jd;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ADDITIONAL_SCENE_BRIGHT_NIGHT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/l0;->a:Lcom/sec/android/app/camera/setting/repository/l0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ADDITIONAL_SCENE_DOCUMENT_SCAN:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/na;->a:Lcom/sec/android/app/camera/setting/repository/na;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ADDITIONAL_SCENE_STAR_BURST:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/jh;->a:Lcom/sec/android/app/camera/setting/repository/jh;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->APERTURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/h6;->a:Lcom/sec/android/app/camera/setting/repository/h6;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ATTACH_BACK_VIDEO_FIXED_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/sd;->a:Lcom/sec/android/app/camera/setting/repository/sd;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ATTACH_FRONT_VIDEO_FIXED_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/db;->a:Lcom/sec/android/app/camera/setting/repository/db;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ATTACH_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/lg;->a:Lcom/sec/android/app/camera/setting/repository/lg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/fd;->a:Lcom/sec/android/app/camera/setting/repository/fd;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/v6;->a:Lcom/sec/android/app/camera/setting/repository/v6;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_INPUT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/o5;->a:Lcom/sec/android/app/camera/setting/repository/o5;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/ug;->a:Lcom/sec/android/app/camera/setting/repository/ug;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/sg;->a:Lcom/sec/android/app/camera/setting/repository/sg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/f2;->a:Lcom/sec/android/app/camera/setting/repository/f2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUTO_HDR:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/f0;->a:Lcom/sec/android/app/camera/setting/repository/f0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUTO_LENS_SWITCHING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/hf;->a:Lcom/sec/android/app/camera/setting/repository/hf;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_BEAUTY_BRIGHTEN_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/a2;->a:Lcom/sec/android/app/camera/setting/repository/a2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_BEAUTY_SMOOTHNESS_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/a3;->a:Lcom/sec/android/app/camera/setting/repository/a3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_BOKEH_BACKDROP_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/ye;->a:Lcom/sec/android/app/camera/setting/repository/ye;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_BOKEH_BACKDROP_LIGHTING_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/oa;->a:Lcom/sec/android/app/camera/setting/repository/oa;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_BOKEH_BIG_BOKEH_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/xg;->a:Lcom/sec/android/app/camera/setting/repository/xg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_BOKEH_COLOR_POP_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/b6;->a:Lcom/sec/android/app/camera/setting/repository/b6;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_BOKEH_COLOR_POP_LIGHTING_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/e6;->a:Lcom/sec/android/app/camera/setting/repository/e6;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/t9;->a:Lcom/sec/android/app/camera/setting/repository/t9;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_BOKEH_HIGH_KEY_MONO_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/pb;->a:Lcom/sec/android/app/camera/setting/repository/pb;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_BOKEH_HIGH_KEY_MONO_LIGHTING_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/pe;->a:Lcom/sec/android/app/camera/setting/repository/pe;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_BOKEH_LENS_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/uh;->a:Lcom/sec/android/app/camera/setting/repository/uh;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_BOKEH_LOW_KEY_MONO_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/lc;->a:Lcom/sec/android/app/camera/setting/repository/lc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_BOKEH_LOW_KEY_MONO_LIGHTING_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/md;->a:Lcom/sec/android/app/camera/setting/repository/md;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_BOKEH_NIGHT_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/y7;->a:Lcom/sec/android/app/camera/setting/repository/y7;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_BOKEH_SPIN_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/c8;->a:Lcom/sec/android/app/camera/setting/repository/c8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_BOKEH_STUDIO_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/c0;->a:Lcom/sec/android/app/camera/setting/repository/c0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_BOKEH_STUDIO_LIGHTING_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/eg;->a:Lcom/sec/android/app/camera/setting/repository/eg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_BOKEH_ZOOM_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/bb;->a:Lcom/sec/android/app/camera/setting/repository/bb;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_CINEMA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/g;->a:Lcom/sec/android/app/camera/setting/repository/g;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_HYPER_LAPSE_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/sec/android/app/camera/setting/repository/a;

    invoke-direct {v3, v2}, Lcom/sec/android/app/camera/setting/repository/a;-><init>(Lcom/sec/android/app/camera/interfaces/Resolution;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PORTRAIT_VIDEO_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/sec/android/app/camera/setting/repository/a;

    invoke-direct {v3, v2}, Lcom/sec/android/app/camera/setting/repository/a;-><init>(Lcom/sec/android/app/camera/interfaces/Resolution;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_CINEMA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v3, Lcom/sec/android/app/camera/setting/repository/xa;->a:Lcom/sec/android/app/camera/setting/repository/xa;

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RATIO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v3, Lcom/sec/android/app/camera/setting/repository/s0;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/setting/repository/s0;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v3, Lcom/sec/android/app/camera/setting/repository/t2;->a:Lcom/sec/android/app/camera/setting/repository/t2;

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_WIDE_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v3, Lcom/sec/android/app/camera/setting/repository/w2;->a:Lcom/sec/android/app/camera/setting/repository/w2;

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RATIO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v3, Lcom/sec/android/app/camera/setting/repository/d4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/setting/repository/d4;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v3, Lcom/sec/android/app/camera/setting/repository/p6;->a:Lcom/sec/android/app/camera/setting/repository/p6;

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SINGLE_TAKE_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1440:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/sec/android/app/camera/setting/repository/a;

    invoke-direct {v4, v3}, Lcom/sec/android/app/camera/setting/repository/a;-><init>(Lcom/sec/android/app/camera/interfaces/Resolution;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SLOW_MOTION_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/sec/android/app/camera/setting/repository/a;

    invoke-direct {v4, v2}, Lcom/sec/android/app/camera/setting/repository/a;-><init>(Lcom/sec/android/app/camera/interfaces/Resolution;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RATIO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v4, Lcom/sec/android/app/camera/setting/repository/v2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/setting/repository/v2;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v4, Lcom/sec/android/app/camera/setting/repository/h0;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/setting/repository/h0;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_WIDE_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v4, Lcom/sec/android/app/camera/setting/repository/h0;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/setting/repository/h0;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_WIDE_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/y5;->a:Lcom/sec/android/app/camera/setting/repository/y5;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMERA_BOKEH_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v4, Lcom/sec/android/app/camera/setting/repository/vb;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/setting/repository/vb;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMERA_HYPER_LAPSE_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/i5;->a:Lcom/sec/android/app/camera/setting/repository/i5;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/fh;->a:Lcom/sec/android/app/camera/setting/repository/fh;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMERA_PANORAMA_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v4, Lcom/sec/android/app/camera/setting/repository/o1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/setting/repository/o1;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMERA_PICTURE_RATIO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v4, Lcom/sec/android/app/camera/setting/repository/mh;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/setting/repository/mh;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/b1;->a:Lcom/sec/android/app/camera/setting/repository/b1;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/ie;->a:Lcom/sec/android/app/camera/setting/repository/ie;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMERA_SINGLE_TAKE_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/hg;->a:Lcom/sec/android/app/camera/setting/repository/hg;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMERA_VIDEO_BOKEH_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/td;->a:Lcom/sec/android/app/camera/setting/repository/td;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMERA_VIDEO_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/kd;->a:Lcom/sec/android/app/camera/setting/repository/kd;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v4, Lcom/sec/android/app/camera/setting/repository/g6;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/setting/repository/g6;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_HYPERLAPSE_DURATION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/x0;->a:Lcom/sec/android/app/camera/setting/repository/x0;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_HYPERLAPSE_MOTION_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v4, Lcom/sec/android/app/camera/setting/repository/z4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/setting/repository/z4;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_HYPERLAPSE_TRAILS:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/oh;->a:Lcom/sec/android/app/camera/setting/repository/oh;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_LARGE_EYES_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/z0;->a:Lcom/sec/android/app/camera/setting/repository/z0;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_LIVE_FOCUS_SKIN_TONE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/u3;->a:Lcom/sec/android/app/camera/setting/repository/u3;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_LIVE_FOCUS_VIDEO_SKIN_TONE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/n9;->a:Lcom/sec/android/app/camera/setting/repository/n9;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_MANUAL_BEAUTY:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/b4;->a:Lcom/sec/android/app/camera/setting/repository/b4;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_PHOTO_EXPOSURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/ge;->a:Lcom/sec/android/app/camera/setting/repository/ge;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_PHOTO_FOCUS_LENGTH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/e0;->a:Lcom/sec/android/app/camera/setting/repository/e0;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_PHOTO_FOCUS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/l6;->a:Lcom/sec/android/app/camera/setting/repository/l6;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_PHOTO_ISO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/b7;->a:Lcom/sec/android/app/camera/setting/repository/b7;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_PHOTO_KELVIN_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/d8;->a:Lcom/sec/android/app/camera/setting/repository/d8;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_PHOTO_MANUAL_COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/p4;->a:Lcom/sec/android/app/camera/setting/repository/p4;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_PHOTO_MANUAL_COLOR_TUNE_CONTRAST:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/gb;->a:Lcom/sec/android/app/camera/setting/repository/gb;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_PHOTO_MANUAL_COLOR_TUNE_HIGHLIGHT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/s2;->a:Lcom/sec/android/app/camera/setting/repository/s2;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_PHOTO_MANUAL_COLOR_TUNE_LAST_USED_OPTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/ia;->a:Lcom/sec/android/app/camera/setting/repository/ia;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_PHOTO_MANUAL_COLOR_TUNE_SATURATION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/ca;->a:Lcom/sec/android/app/camera/setting/repository/ca;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_PHOTO_MANUAL_COLOR_TUNE_SHADOW:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/ue;->a:Lcom/sec/android/app/camera/setting/repository/ue;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_PHOTO_MANUAL_COLOR_TUNE_TEMPERATURE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/l3;->a:Lcom/sec/android/app/camera/setting/repository/l3;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_PHOTO_MANUAL_COLOR_TUNE_TINT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/b2;->a:Lcom/sec/android/app/camera/setting/repository/b2;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_PHOTO_SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/m4;->a:Lcom/sec/android/app/camera/setting/repository/m4;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_PHOTO_WHITE_BALANCE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/u0;->a:Lcom/sec/android/app/camera/setting/repository/u0;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_VIDEO_EXPOSURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/rc;->a:Lcom/sec/android/app/camera/setting/repository/rc;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_VIDEO_FOCUS_LENGTH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/c3;->a:Lcom/sec/android/app/camera/setting/repository/c3;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_VIDEO_FOCUS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/q9;->a:Lcom/sec/android/app/camera/setting/repository/q9;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_VIDEO_ISO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/bd;->a:Lcom/sec/android/app/camera/setting/repository/bd;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_VIDEO_KELVIN_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/qd;->a:Lcom/sec/android/app/camera/setting/repository/qd;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_VIDEO_MANUAL_COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/xd;->a:Lcom/sec/android/app/camera/setting/repository/xd;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_VIDEO_MANUAL_COLOR_TUNE_CONTRAST:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/n0;->a:Lcom/sec/android/app/camera/setting/repository/n0;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_VIDEO_MANUAL_COLOR_TUNE_HIGHLIGHT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/ce;->a:Lcom/sec/android/app/camera/setting/repository/ce;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_VIDEO_MANUAL_COLOR_TUNE_LAST_USED_OPTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/r3;->a:Lcom/sec/android/app/camera/setting/repository/r3;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_VIDEO_MANUAL_COLOR_TUNE_SATURATION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/p1;->a:Lcom/sec/android/app/camera/setting/repository/p1;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_VIDEO_MANUAL_COLOR_TUNE_SHADOW:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/k0;->a:Lcom/sec/android/app/camera/setting/repository/k0;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_VIDEO_MANUAL_COLOR_TUNE_TEMPERATURE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/ya;->a:Lcom/sec/android/app/camera/setting/repository/ya;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_VIDEO_MANUAL_COLOR_TUNE_TINT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/s;->a:Lcom/sec/android/app/camera/setting/repository/s;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_VIDEO_SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/p5;->a:Lcom/sec/android/app/camera/setting/repository/p5;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_NORMAL_VIDEO_WHITE_BALANCE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/d0;->a:Lcom/sec/android/app/camera/setting/repository/d0;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/kc;->a:Lcom/sec/android/app/camera/setting/repository/kc;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/wa;->a:Lcom/sec/android/app/camera/setting/repository/wa;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_HEAD_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/g2;->a:Lcom/sec/android/app/camera/setting/repository/g2;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_HIPS_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/q;->a:Lcom/sec/android/app/camera/setting/repository/q;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_LEGS_LENGTH_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/qa;->a:Lcom/sec/android/app/camera/setting/repository/qa;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_LEGS_THICKNESS_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/a0;->a:Lcom/sec/android/app/camera/setting/repository/a0;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_SHOULDERS_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/j9;->a:Lcom/sec/android/app/camera/setting/repository/j9;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_WAIST_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/wf;->a:Lcom/sec/android/app/camera/setting/repository/wf;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_WHOLE_BODY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/tb;->a:Lcom/sec/android/app/camera/setting/repository/tb;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_EFFECTS_TAB:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/rh;->a:Lcom/sec/android/app/camera/setting/repository/rh;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/m1;->a:Lcom/sec/android/app/camera/setting/repository/m1;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTERS_TAB:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/ic;->a:Lcom/sec/android/app/camera/setting/repository/ic;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/d;->a:Lcom/sec/android/app/camera/setting/repository/d;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_MANUAL_BODY_BEAUTY:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/tg;->a:Lcom/sec/android/app/camera/setting/repository/tg;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/k4;->a:Lcom/sec/android/app/camera/setting/repository/k4;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_MY_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/x2;->a:Lcom/sec/android/app/camera/setting/repository/x2;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_NIGHT_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/h8;->a:Lcom/sec/android/app/camera/setting/repository/h8;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_PHOTO_EXPOSURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/j4;->a:Lcom/sec/android/app/camera/setting/repository/j4;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_PHOTO_FOCUS_LENGTH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/aa;->a:Lcom/sec/android/app/camera/setting/repository/aa;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_PHOTO_FOCUS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/qf;->a:Lcom/sec/android/app/camera/setting/repository/qf;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_PHOTO_ISO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/oc;->a:Lcom/sec/android/app/camera/setting/repository/oc;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_PHOTO_KELVIN_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/g0;->a:Lcom/sec/android/app/camera/setting/repository/g0;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_PHOTO_MANUAL_COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/ph;->a:Lcom/sec/android/app/camera/setting/repository/ph;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_PHOTO_MANUAL_COLOR_TUNE_CONTRAST:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/e7;->a:Lcom/sec/android/app/camera/setting/repository/e7;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_PHOTO_MANUAL_COLOR_TUNE_HIGHLIGHT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/l8;->a:Lcom/sec/android/app/camera/setting/repository/l8;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_PHOTO_MANUAL_COLOR_TUNE_LAST_USED_OPTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/cd;->a:Lcom/sec/android/app/camera/setting/repository/cd;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_PHOTO_MANUAL_COLOR_TUNE_SATURATION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/h5;->a:Lcom/sec/android/app/camera/setting/repository/h5;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_PHOTO_MANUAL_COLOR_TUNE_SHADOW:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/ua;->a:Lcom/sec/android/app/camera/setting/repository/ua;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_PHOTO_MANUAL_COLOR_TUNE_TEMPERATURE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/kh;->a:Lcom/sec/android/app/camera/setting/repository/kh;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_PHOTO_MANUAL_COLOR_TUNE_TINT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/rg;->a:Lcom/sec/android/app/camera/setting/repository/rg;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_PHOTO_SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/ha;->a:Lcom/sec/android/app/camera/setting/repository/ha;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_PHOTO_WHITE_BALANCE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/x;->a:Lcom/sec/android/app/camera/setting/repository/x;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_VIDEO_EXPOSURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/wb;->a:Lcom/sec/android/app/camera/setting/repository/wb;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_VIDEO_FOCUS_LENGTH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/ag;->a:Lcom/sec/android/app/camera/setting/repository/ag;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_VIDEO_FOCUS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/v3;->a:Lcom/sec/android/app/camera/setting/repository/v3;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_VIDEO_ISO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/x6;->a:Lcom/sec/android/app/camera/setting/repository/x6;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_VIDEO_KELVIN_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/m2;->a:Lcom/sec/android/app/camera/setting/repository/m2;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_VIDEO_MANUAL_COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/bc;->a:Lcom/sec/android/app/camera/setting/repository/bc;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_VIDEO_MANUAL_COLOR_TUNE_CONTRAST:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/yg;->a:Lcom/sec/android/app/camera/setting/repository/yg;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_VIDEO_MANUAL_COLOR_TUNE_HIGHLIGHT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/sc;->a:Lcom/sec/android/app/camera/setting/repository/sc;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_VIDEO_MANUAL_COLOR_TUNE_LAST_USED_OPTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/g4;->a:Lcom/sec/android/app/camera/setting/repository/g4;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_VIDEO_MANUAL_COLOR_TUNE_SATURATION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/u5;->a:Lcom/sec/android/app/camera/setting/repository/u5;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_VIDEO_MANUAL_COLOR_TUNE_SHADOW:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/g7;->a:Lcom/sec/android/app/camera/setting/repository/g7;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_VIDEO_MANUAL_COLOR_TUNE_TEMPERATURE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/z8;->a:Lcom/sec/android/app/camera/setting/repository/z8;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_VIDEO_MANUAL_COLOR_TUNE_TINT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/ub;->a:Lcom/sec/android/app/camera/setting/repository/ub;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_VIDEO_SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/f1;->a:Lcom/sec/android/app/camera/setting/repository/f1;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SECOND_TELE_VIDEO_WHITE_BALANCE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/ae;->a:Lcom/sec/android/app/camera/setting/repository/ae;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SLIM_FACE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/cf;->a:Lcom/sec/android/app/camera/setting/repository/cf;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SMART_BEAUTY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/ze;->a:Lcom/sec/android/app/camera/setting/repository/ze;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_PHOTO_EXPOSURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/r1;->a:Lcom/sec/android/app/camera/setting/repository/r1;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_PHOTO_FOCUS_LENGTH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/th;->a:Lcom/sec/android/app/camera/setting/repository/th;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_PHOTO_FOCUS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/da;->a:Lcom/sec/android/app/camera/setting/repository/da;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_PHOTO_ISO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/e4;->a:Lcom/sec/android/app/camera/setting/repository/e4;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_PHOTO_KELVIN_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/h;->a:Lcom/sec/android/app/camera/setting/repository/h;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_PHOTO_MANUAL_COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/se;->a:Lcom/sec/android/app/camera/setting/repository/se;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_PHOTO_MANUAL_COLOR_TUNE_CONTRAST:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/m8;->a:Lcom/sec/android/app/camera/setting/repository/m8;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_PHOTO_MANUAL_COLOR_TUNE_HIGHLIGHT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/t7;->a:Lcom/sec/android/app/camera/setting/repository/t7;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_PHOTO_MANUAL_COLOR_TUNE_LAST_USED_OPTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/f5;->a:Lcom/sec/android/app/camera/setting/repository/f5;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_PHOTO_MANUAL_COLOR_TUNE_SATURATION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/i9;->a:Lcom/sec/android/app/camera/setting/repository/i9;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_PHOTO_MANUAL_COLOR_TUNE_SHADOW:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/b;->a:Lcom/sec/android/app/camera/setting/repository/b;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_PHOTO_MANUAL_COLOR_TUNE_TEMPERATURE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/cg;->a:Lcom/sec/android/app/camera/setting/repository/cg;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_PHOTO_MANUAL_COLOR_TUNE_TINT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/c9;->a:Lcom/sec/android/app/camera/setting/repository/c9;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_PHOTO_SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/n6;->a:Lcom/sec/android/app/camera/setting/repository/n6;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_PHOTO_WHITE_BALANCE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/wh;->a:Lcom/sec/android/app/camera/setting/repository/wh;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_VIDEO_EXPOSURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/o6;->a:Lcom/sec/android/app/camera/setting/repository/o6;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_VIDEO_FOCUS_LENGTH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/h1;->a:Lcom/sec/android/app/camera/setting/repository/h1;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_VIDEO_FOCUS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/y4;->a:Lcom/sec/android/app/camera/setting/repository/y4;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_VIDEO_ISO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/za;->a:Lcom/sec/android/app/camera/setting/repository/za;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_VIDEO_KELVIN_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/ed;->a:Lcom/sec/android/app/camera/setting/repository/ed;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_VIDEO_MANUAL_COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/kb;->a:Lcom/sec/android/app/camera/setting/repository/kb;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_VIDEO_MANUAL_COLOR_TUNE_CONTRAST_VIDEO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/j7;->a:Lcom/sec/android/app/camera/setting/repository/j7;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_VIDEO_MANUAL_COLOR_TUNE_HIGHLIGHT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/zf;->a:Lcom/sec/android/app/camera/setting/repository/zf;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_VIDEO_MANUAL_COLOR_TUNE_LAST_USED_OPTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/gc;->a:Lcom/sec/android/app/camera/setting/repository/gc;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_VIDEO_MANUAL_COLOR_TUNE_SATURATION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/lh;->a:Lcom/sec/android/app/camera/setting/repository/lh;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_VIDEO_MANUAL_COLOR_TUNE_SHADOW:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/s4;->a:Lcom/sec/android/app/camera/setting/repository/s4;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_VIDEO_MANUAL_COLOR_TUNE_TEMPERATURE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/m6;->a:Lcom/sec/android/app/camera/setting/repository/m6;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_VIDEO_MANUAL_COLOR_TUNE_TINT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/hh;->a:Lcom/sec/android/app/camera/setting/repository/hh;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_VIDEO_SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/w6;->a:Lcom/sec/android/app/camera/setting/repository/w6;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TELE_VIDEO_WHITE_BALANCE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/y;->a:Lcom/sec/android/app/camera/setting/repository/y;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/s9;->a:Lcom/sec/android/app/camera/setting/repository/s9;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/x5;->a:Lcom/sec/android/app/camera/setting/repository/x5;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BEAUTY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/u7;->a:Lcom/sec/android/app/camera/setting/repository/u7;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/me;->a:Lcom/sec/android/app/camera/setting/repository/me;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_HEAD_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/u1;->a:Lcom/sec/android/app/camera/setting/repository/u1;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_HIPS_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/r8;->a:Lcom/sec/android/app/camera/setting/repository/r8;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_LEGS_LENGTH_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/fe;->a:Lcom/sec/android/app/camera/setting/repository/fe;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_LEGS_THICKNESS_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/h9;->a:Lcom/sec/android/app/camera/setting/repository/h9;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_SHOULDERS_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/b8;->a:Lcom/sec/android/app/camera/setting/repository/b8;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_WAIST_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/j0;->a:Lcom/sec/android/app/camera/setting/repository/j0;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_WHOLE_BODY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/xf;->a:Lcom/sec/android/app/camera/setting/repository/xf;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_BIG_BOKEH_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/l9;->a:Lcom/sec/android/app/camera/setting/repository/l9;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_COLOR_POP_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/c1;->a:Lcom/sec/android/app/camera/setting/repository/c1;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_EFFECT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/cc;->a:Lcom/sec/android/app/camera/setting/repository/cc;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_GLITCH_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/a1;->a:Lcom/sec/android/app/camera/setting/repository/a1;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_LENS_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/p2;->a:Lcom/sec/android/app/camera/setting/repository/p2;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_EFFECTS_TAB:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/l1;->a:Lcom/sec/android/app/camera/setting/repository/l1;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/r5;->a:Lcom/sec/android/app/camera/setting/repository/r5;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTERS_TAB:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/ig;->a:Lcom/sec/android/app/camera/setting/repository/ig;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/sa;->a:Lcom/sec/android/app/camera/setting/repository/sa;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_MANUAL_BODY_BEAUTY:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/u2;->a:Lcom/sec/android/app/camera/setting/repository/u2;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/y6;->a:Lcom/sec/android/app/camera/setting/repository/y6;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/i1;->a:Lcom/sec/android/app/camera/setting/repository/i1;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_PHOTO_EXPOSURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/hc;->a:Lcom/sec/android/app/camera/setting/repository/hc;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_PHOTO_FOCUS_LENGTH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/fa;->a:Lcom/sec/android/app/camera/setting/repository/fa;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_PHOTO_FOCUS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/f7;->a:Lcom/sec/android/app/camera/setting/repository/f7;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_PHOTO_ISO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/gd;->a:Lcom/sec/android/app/camera/setting/repository/gd;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_PHOTO_KELVIN_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/hb;->a:Lcom/sec/android/app/camera/setting/repository/hb;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_PHOTO_MANUAL_COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/n;->a:Lcom/sec/android/app/camera/setting/repository/n;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_PHOTO_MANUAL_COLOR_TUNE_CONTRAST:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/c4;->a:Lcom/sec/android/app/camera/setting/repository/c4;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_PHOTO_MANUAL_COLOR_TUNE_HIGHLIGHT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/x8;->a:Lcom/sec/android/app/camera/setting/repository/x8;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_PHOTO_MANUAL_COLOR_TUNE_LAST_USED_OPTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/x4;->a:Lcom/sec/android/app/camera/setting/repository/x4;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_PHOTO_MANUAL_COLOR_TUNE_SATURATION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/k3;->a:Lcom/sec/android/app/camera/setting/repository/k3;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_PHOTO_MANUAL_COLOR_TUNE_SHADOW:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/h2;->a:Lcom/sec/android/app/camera/setting/repository/h2;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_PHOTO_MANUAL_COLOR_TUNE_TEMPERATURE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/k;->a:Lcom/sec/android/app/camera/setting/repository/k;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_PHOTO_MANUAL_COLOR_TUNE_TINT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/m3;->a:Lcom/sec/android/app/camera/setting/repository/m3;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_PHOTO_SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/r9;->a:Lcom/sec/android/app/camera/setting/repository/r9;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_PHOTO_WHITE_BALANCE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/o9;->a:Lcom/sec/android/app/camera/setting/repository/o9;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_VIDEO_EXPOSURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/ef;->a:Lcom/sec/android/app/camera/setting/repository/ef;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_VIDEO_FOCUS_LENGTH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/y3;->a:Lcom/sec/android/app/camera/setting/repository/y3;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_VIDEO_FOCUS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/u8;->a:Lcom/sec/android/app/camera/setting/repository/u8;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_VIDEO_ISO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/y1;->a:Lcom/sec/android/app/camera/setting/repository/y1;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_VIDEO_KELVIN_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/j2;->a:Lcom/sec/android/app/camera/setting/repository/j2;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_VIDEO_MANUAL_COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/v7;->a:Lcom/sec/android/app/camera/setting/repository/v7;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_VIDEO_MANUAL_COLOR_TUNE_CONTRAST:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/z6;->a:Lcom/sec/android/app/camera/setting/repository/z6;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_VIDEO_MANUAL_COLOR_TUNE_HIGHLIGHT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/oe;->a:Lcom/sec/android/app/camera/setting/repository/oe;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_VIDEO_MANUAL_COLOR_TUNE_LAST_USED_OPTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/fb;->a:Lcom/sec/android/app/camera/setting/repository/fb;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_VIDEO_MANUAL_COLOR_TUNE_SATURATION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/t8;->a:Lcom/sec/android/app/camera/setting/repository/t8;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_VIDEO_MANUAL_COLOR_TUNE_SHADOW:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/i3;->a:Lcom/sec/android/app/camera/setting/repository/i3;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_VIDEO_MANUAL_COLOR_TUNE_TEMPERATURE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/df;->a:Lcom/sec/android/app/camera/setting/repository/df;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_VIDEO_MANUAL_COLOR_TUNE_TINT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/z7;->a:Lcom/sec/android/app/camera/setting/repository/z7;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_VIDEO_SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/s7;->a:Lcom/sec/android/app/camera/setting/repository/s7;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_WIDE_VIDEO_WHITE_BALANCE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/e8;->a:Lcom/sec/android/app/camera/setting/repository/e8;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BEAUTY_FILTER_EFFECT_ENABLED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/de;->a:Lcom/sec/android/app/camera/setting/repository/de;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BOKEH_EFFECT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/o3;->a:Lcom/sec/android/app/camera/setting/repository/o3;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/o0;->a:Lcom/sec/android/app/camera/setting/repository/o0;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMCORDER_RATIO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/p3;->a:Lcom/sec/android/app/camera/setting/repository/p3;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/r2;->a:Lcom/sec/android/app/camera/setting/repository/r2;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMERA_ID:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/q1;->a:Lcom/sec/android/app/camera/setting/repository/q1;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMERA_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/nd;->a:Lcom/sec/android/app/camera/setting/repository/nd;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/v;->a:Lcom/sec/android/app/camera/setting/repository/v;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAPTURE_WHEN_PRESSED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/u;->a:Lcom/sec/android/app/camera/setting/repository/u;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CLEAN_HDMI:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/lb;->a:Lcom/sec/android/app/camera/setting/repository/lb;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/e1;->a:Lcom/sec/android/app/camera/setting/repository/e1;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETAIL_ENHANCER_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/hd;->a:Lcom/sec/android/app/camera/setting/repository/hd;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/nh;->a:Lcom/sec/android/app/camera/setting/repository/nh;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DUAL_PIP_STATE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/y0;->a:Lcom/sec/android/app/camera/setting/repository/y0;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DUAL_PIP_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/ch;->a:Lcom/sec/android/app/camera/setting/repository/ch;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DUAL_RECORDING_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/he;->a:Lcom/sec/android/app/camera/setting/repository/he;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->EXPOSURE_METERING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/mg;->a:Lcom/sec/android/app/camera/setting/repository/mg;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/g9;->a:Lcom/sec/android/app/camera/setting/repository/g9;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FACING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/qb;->a:Lcom/sec/android/app/camera/setting/repository/qb;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FAST_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/z3;->a:Lcom/sec/android/app/camera/setting/repository/z3;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FAST_SHUTTER_OPTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/p;->a:Lcom/sec/android/app/camera/setting/repository/p;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/s6;->a:Lcom/sec/android/app/camera/setting/repository/s6;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FLASH_RESTRICTION_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/q4;->a:Lcom/sec/android/app/camera/setting/repository/q4;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/z5;->a:Lcom/sec/android/app/camera/setting/repository/z5;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FLOATING_SHUTTER_BUTTON_VISIBILITY:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/w3;->a:Lcom/sec/android/app/camera/setting/repository/w3;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FOCUS_ENHANCER_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/jb;->a:Lcom/sec/android/app/camera/setting/repository/jb;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FOCUS_ENHANCER_STATE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/zd;->a:Lcom/sec/android/app/camera/setting/repository/zd;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/e2;->a:Lcom/sec/android/app/camera/setting/repository/e2;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FOCUS_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/od;->a:Lcom/sec/android/app/camera/setting/repository/od;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FOCUS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/w4;->a:Lcom/sec/android/app/camera/setting/repository/w4;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FOOD_BLUR_EFFECT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/ff;->a:Lcom/sec/android/app/camera/setting/repository/ff;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FOOD_COLOR_TUNE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/e5;->a:Lcom/sec/android/app/camera/setting/repository/e5;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_BEAUTY_BRIGHTEN_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/ja;->a:Lcom/sec/android/app/camera/setting/repository/ja;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_BEAUTY_SMOOTHNESS_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/k6;->a:Lcom/sec/android/app/camera/setting/repository/k6;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_BOKEH_BACKDROP_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/i7;->a:Lcom/sec/android/app/camera/setting/repository/i7;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_BOKEH_BACKDROP_LIGHTING_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/l4;->a:Lcom/sec/android/app/camera/setting/repository/l4;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_BOKEH_BIG_BOKEH_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/d6;->a:Lcom/sec/android/app/camera/setting/repository/d6;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_BOKEH_COLOR_POP_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/l7;->a:Lcom/sec/android/app/camera/setting/repository/l7;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_BOKEH_COLOR_POP_LIGHTING_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/w5;->a:Lcom/sec/android/app/camera/setting/repository/w5;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/zb;->a:Lcom/sec/android/app/camera/setting/repository/zb;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_BOKEH_HIGH_KEY_MONO_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/sh;->a:Lcom/sec/android/app/camera/setting/repository/sh;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_BOKEH_HIGH_KEY_MONO_LIGHTING_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/rd;->a:Lcom/sec/android/app/camera/setting/repository/rd;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_BOKEH_LENS_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/ve;->a:Lcom/sec/android/app/camera/setting/repository/ve;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_BOKEH_LOW_KEY_MONO_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/nb;->a:Lcom/sec/android/app/camera/setting/repository/nb;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_BOKEH_LOW_KEY_MONO_LIGHTING_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/zg;->a:Lcom/sec/android/app/camera/setting/repository/zg;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_BOKEH_NIGHT_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/g1;->a:Lcom/sec/android/app/camera/setting/repository/g1;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_BOKEH_SPIN_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/q8;->a:Lcom/sec/android/app/camera/setting/repository/q8;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_BOKEH_STUDIO_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/x3;->a:Lcom/sec/android/app/camera/setting/repository/x3;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_BOKEH_STUDIO_LIGHTING_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/vf;->a:Lcom/sec/android/app/camera/setting/repository/vf;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_BOKEH_ZOOM_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/i6;->a:Lcom/sec/android/app/camera/setting/repository/i6;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_HYPER_LAPSE_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/sec/android/app/camera/setting/repository/a;

    invoke-direct {v4, v2}, Lcom/sec/android/app/camera/setting/repository/a;-><init>(Lcom/sec/android/app/camera/interfaces/Resolution;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_PORTRAIT_VIDEO_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/sec/android/app/camera/setting/repository/a;

    invoke-direct {v4, v2}, Lcom/sec/android/app/camera/setting/repository/a;-><init>(Lcom/sec/android/app/camera/interfaces/Resolution;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_PRO_CINEMA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/tf;->a:Lcom/sec/android/app/camera/setting/repository/tf;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_PRO_RATIO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v4, Lcom/sec/android/app/camera/setting/repository/uf;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/setting/repository/uf;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_PRO_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/i0;->a:Lcom/sec/android/app/camera/setting/repository/i0;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_PRO_WIDE_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/d3;->a:Lcom/sec/android/app/camera/setting/repository/d3;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RATIO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v4, Lcom/sec/android/app/camera/setting/repository/v5;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/setting/repository/v5;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/sec/android/app/camera/setting/repository/ga;->a:Lcom/sec/android/app/camera/setting/repository/ga;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_SINGLE_TAKE_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/sec/android/app/camera/setting/repository/a;

    invoke-direct {v4, v3}, Lcom/sec/android/app/camera/setting/repository/a;-><init>(Lcom/sec/android/app/camera/interfaces/Resolution;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_SLOW_MOTION_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/sec/android/app/camera/setting/repository/a;

    invoke-direct {v3, v2}, Lcom/sec/android/app/camera/setting/repository/a;-><init>(Lcom/sec/android/app/camera/interfaces/Resolution;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_WIDE_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/ta;->a:Lcom/sec/android/app/camera/setting/repository/ta;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMERA_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/la;->a:Lcom/sec/android/app/camera/setting/repository/la;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMERA_PICTURE_RATIO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/w;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/w;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/if;->a:Lcom/sec/android/app/camera/setting/repository/if;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMERA_SINGLE_TAKE_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/r0;->a:Lcom/sec/android/app/camera/setting/repository/r0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/pg;->a:Lcom/sec/android/app/camera/setting/repository/pg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_HYPERLAPSE_DURATION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/eb;->a:Lcom/sec/android/app/camera/setting/repository/eb;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_HYPERLAPSE_MOTION_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/z4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/z4;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_HYPER_LAPSE_NIGHT_AUTO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/k2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/k2;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_LARGE_EYES_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/d2;->a:Lcom/sec/android/app/camera/setting/repository/d2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_LIVE_FOCUS_SKIN_TONE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/p0;->a:Lcom/sec/android/app/camera/setting/repository/p0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_LIVE_FOCUS_VIDEO_SKIN_TONE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/te;->a:Lcom/sec/android/app/camera/setting/repository/te;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_MANUAL_BEAUTY:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/qh;->a:Lcom/sec/android/app/camera/setting/repository/qh;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_PHOTO_EXPOSURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/tc;->a:Lcom/sec/android/app/camera/setting/repository/tc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_PHOTO_FOCUS_LENGTH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/le;->a:Lcom/sec/android/app/camera/setting/repository/le;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_PHOTO_FOCUS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/t0;->a:Lcom/sec/android/app/camera/setting/repository/t0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_PHOTO_ISO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/m9;->a:Lcom/sec/android/app/camera/setting/repository/m9;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_PHOTO_KELVIN_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/x1;->a:Lcom/sec/android/app/camera/setting/repository/x1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_PHOTO_MANUAL_COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/ah;->a:Lcom/sec/android/app/camera/setting/repository/ah;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_PHOTO_MANUAL_COLOR_TUNE_CONTRAST:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/ac;->a:Lcom/sec/android/app/camera/setting/repository/ac;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_PHOTO_MANUAL_COLOR_TUNE_HIGHLIGHT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/m;->a:Lcom/sec/android/app/camera/setting/repository/m;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_PHOTO_MANUAL_COLOR_TUNE_LAST_USED_OPTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/j3;->a:Lcom/sec/android/app/camera/setting/repository/j3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_PHOTO_MANUAL_COLOR_TUNE_SATURATION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/qc;->a:Lcom/sec/android/app/camera/setting/repository/qc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_PHOTO_MANUAL_COLOR_TUNE_SHADOW:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/b5;->a:Lcom/sec/android/app/camera/setting/repository/b5;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_PHOTO_MANUAL_COLOR_TUNE_TEMPERATURE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/i4;->a:Lcom/sec/android/app/camera/setting/repository/i4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_PHOTO_MANUAL_COLOR_TUNE_TINT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/uc;->a:Lcom/sec/android/app/camera/setting/repository/uc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_PHOTO_SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/og;->a:Lcom/sec/android/app/camera/setting/repository/og;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_PHOTO_WHITE_BALANCE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/ud;->a:Lcom/sec/android/app/camera/setting/repository/ud;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_VIDEO_EXPOSURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/re;->a:Lcom/sec/android/app/camera/setting/repository/re;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_VIDEO_FOCUS_LENGTH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/v1;->a:Lcom/sec/android/app/camera/setting/repository/v1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_VIDEO_FOCUS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/a5;->a:Lcom/sec/android/app/camera/setting/repository/a5;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_VIDEO_ISO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/h7;->a:Lcom/sec/android/app/camera/setting/repository/h7;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_VIDEO_KELVIN_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/f9;->a:Lcom/sec/android/app/camera/setting/repository/f9;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_VIDEO_MANUAL_COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/wc;->a:Lcom/sec/android/app/camera/setting/repository/wc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_VIDEO_MANUAL_COLOR_TUNE_CONTRAST:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/v0;->a:Lcom/sec/android/app/camera/setting/repository/v0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_VIDEO_MANUAL_COLOR_TUNE_HIGHLIGHT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/l2;->a:Lcom/sec/android/app/camera/setting/repository/l2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_VIDEO_MANUAL_COLOR_TUNE_LAST_USED_OPTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/ld;->a:Lcom/sec/android/app/camera/setting/repository/ld;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_VIDEO_MANUAL_COLOR_TUNE_SATURATION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/o2;->a:Lcom/sec/android/app/camera/setting/repository/o2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_VIDEO_MANUAL_COLOR_TUNE_SHADOW:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/t;->a:Lcom/sec/android/app/camera/setting/repository/t;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_VIDEO_MANUAL_COLOR_TUNE_TEMPERATURE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/f;->a:Lcom/sec/android/app/camera/setting/repository/f;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_VIDEO_MANUAL_COLOR_TUNE_TINT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/ob;->a:Lcom/sec/android/app/camera/setting/repository/ob;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_VIDEO_SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/e3;->a:Lcom/sec/android/app/camera/setting/repository/e3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_NORMAL_VIDEO_WHITE_BALANCE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/w7;->a:Lcom/sec/android/app/camera/setting/repository/w7;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_PHOTO_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/sb;->a:Lcom/sec/android/app/camera/setting/repository/sb;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_PHOTO_EFFECTS_TAB:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/t5;->a:Lcom/sec/android/app/camera/setting/repository/t5;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/dd;->a:Lcom/sec/android/app/camera/setting/repository/dd;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTERS_TAB:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/b9;->a:Lcom/sec/android/app/camera/setting/repository/b9;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/r;->a:Lcom/sec/android/app/camera/setting/repository/r;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_PHOTO_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/r4;->a:Lcom/sec/android/app/camera/setting/repository/r4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_PHOTO_MY_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/zc;->a:Lcom/sec/android/app/camera/setting/repository/zc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_PHOTO_NIGHT_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/ee;->a:Lcom/sec/android/app/camera/setting/repository/ee;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_SLIM_FACE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/b3;->a:Lcom/sec/android/app/camera/setting/repository/b3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_SMART_BEAUTY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/j;->a:Lcom/sec/android/app/camera/setting/repository/j;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/y8;->a:Lcom/sec/android/app/camera/setting/repository/y8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_VIDEO_BEAUTY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/n5;->a:Lcom/sec/android/app/camera/setting/repository/n5;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_BIG_BOKEH_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/n1;->a:Lcom/sec/android/app/camera/setting/repository/n1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_COLOR_POP_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/ad;->a:Lcom/sec/android/app/camera/setting/repository/ad;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_EFFECT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/u6;->a:Lcom/sec/android/app/camera/setting/repository/u6;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_GLITCH_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/ea;->a:Lcom/sec/android/app/camera/setting/repository/ea;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_LENS_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/k8;->a:Lcom/sec/android/app/camera/setting/repository/k8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_VIDEO_EFFECTS_TAB:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/a6;->a:Lcom/sec/android/app/camera/setting/repository/a6;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/f4;->a:Lcom/sec/android/app/camera/setting/repository/f4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTERS_TAB:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/f8;->a:Lcom/sec/android/app/camera/setting/repository/f8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/xb;->a:Lcom/sec/android/app/camera/setting/repository/xb;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_VIDEO_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/k1;->a:Lcom/sec/android/app/camera/setting/repository/k1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_VIDEO_MY_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/z9;->a:Lcom/sec/android/app/camera/setting/repository/z9;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->GUIDE_LINE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/g5;->a:Lcom/sec/android/app/camera/setting/repository/g5;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HDR10_RECORDING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/q3;->a:Lcom/sec/android/app/camera/setting/repository/q3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/q5;->a:Lcom/sec/android/app/camera/setting/repository/q5;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HEIF:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/a7;->a:Lcom/sec/android/app/camera/setting/repository/a7;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HEVC:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/dh;->a:Lcom/sec/android/app/camera/setting/repository/dh;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HIGH_BITRATE_VIDEO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/t4;->a:Lcom/sec/android/app/camera/setting/repository/t4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HIGH_EFFICIENCY_VIDEO_PRIORITY:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/mb;->a:Lcom/sec/android/app/camera/setting/repository/mb;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HIGH_RESOLUTION_FAST_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/w0;->a:Lcom/sec/android/app/camera/setting/repository/w0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/q6;->a:Lcom/sec/android/app/camera/setting/repository/q6;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HYPERLAPSE_DURATION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/b0;->a:Lcom/sec/android/app/camera/setting/repository/b0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/i2;->a:Lcom/sec/android/app/camera/setting/repository/i2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT_AUTO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/z1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/z1;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT_AUTO_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/j1;->a:Lcom/sec/android/app/camera/setting/repository/j1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->INACTIVITY_TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/fc;->a:Lcom/sec/android/app/camera/setting/repository/fc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ISO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/l5;->a:Lcom/sec/android/app/camera/setting/repository/l5;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->KEEP_CAMERA_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/c5;->a:Lcom/sec/android/app/camera/setting/repository/c5;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->KEEP_FILTERS:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/c7;->a:Lcom/sec/android/app/camera/setting/repository/c7;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->KEEP_HIGH_PICTURE_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/w9;->a:Lcom/sec/android/app/camera/setting/repository/w9;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->KEEP_PORTRAIT_ZOOM:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/p8;->a:Lcom/sec/android/app/camera/setting/repository/p8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->KEEP_SELFIE_ANGLE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/u4;->a:Lcom/sec/android/app/camera/setting/repository/u4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->KEEP_SUPER_STEADY:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/jc;->a:Lcom/sec/android/app/camera/setting/repository/jc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/jg;->a:Lcom/sec/android/app/camera/setting/repository/jg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->KNOX_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/n7;->a:Lcom/sec/android/app/camera/setting/repository/n7;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/m7;->a:Lcom/sec/android/app/camera/setting/repository/m7;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MANUAL_COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/x7;->a:Lcom/sec/android/app/camera/setting/repository/x7;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MANUAL_COLOR_TUNE_LAST_USED_OPTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/we;->a:Lcom/sec/android/app/camera/setting/repository/we;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/q2;->a:Lcom/sec/android/app/camera/setting/repository/q2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MOTION_PHOTO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/x9;->a:Lcom/sec/android/app/camera/setting/repository/x9;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MULTI_AF_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/q0;->a:Lcom/sec/android/app/camera/setting/repository/q0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MULTI_RECORDING_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/ba;->a:Lcom/sec/android/app/camera/setting/repository/ba;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MULTI_RECORDING_SAVE_OPTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/f6;->a:Lcom/sec/android/app/camera/setting/repository/f6;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MULTI_RECORDING_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/u9;->a:Lcom/sec/android/app/camera/setting/repository/u9;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MULTI_WINDOW_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/n2;->a:Lcom/sec/android/app/camera/setting/repository/n2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->OVERRIDDEN_VIDEO_SETTING_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/be;->a:Lcom/sec/android/app/camera/setting/repository/be;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->PALM_DETECTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/gg;->a:Lcom/sec/android/app/camera/setting/repository/gg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->PHOTO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/v4;->a:Lcom/sec/android/app/camera/setting/repository/v4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->PHOTO_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/vh;->a:Lcom/sec/android/app/camera/setting/repository/vh;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->PHOTO_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/ra;->a:Lcom/sec/android/app/camera/setting/repository/ra;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->PHOTO_MY_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/s8;->a:Lcom/sec/android/app/camera/setting/repository/s8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->PICTURE_FORMAT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/d5;->a:Lcom/sec/android/app/camera/setting/repository/d5;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->PRO_TIPS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/cb;->a:Lcom/sec/android/app/camera/setting/repository/cb;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/d9;->a:Lcom/sec/android/app/camera/setting/repository/d9;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QR_SCANNER_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/vd;->a:Lcom/sec/android/app/camera/setting/repository/vd;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QR_SCANNER_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/ka;->a:Lcom/sec/android/app/camera/setting/repository/ka;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/xh;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/xh;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QUICK_TAKE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/ab;->a:Lcom/sec/android/app/camera/setting/repository/ab;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QUICK_TAKE_RECORDING_STATUS:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/h4;->a:Lcom/sec/android/app/camera/setting/repository/h4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QUICK_TAKE_RECORDING_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/kg;->a:Lcom/sec/android/app/camera/setting/repository/kg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->RECORDING_360_BT_MIC:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/z2;->a:Lcom/sec/android/app/camera/setting/repository/z2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->RECORDING_INACTIVITY_TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/yb;->a:Lcom/sec/android/app/camera/setting/repository/yb;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->RECORDING_MOTION_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/z4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/z4;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->REMOVE_STAR_EFFECT_ENABLED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/a8;->a:Lcom/sec/android/app/camera/setting/repository/a8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SAVE_AS_FLIPPED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/t6;->a:Lcom/sec/android/app/camera/setting/repository/t6;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/gf;->a:Lcom/sec/android/app/camera/setting/repository/gf;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SECURE_CAMERA:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/k9;->a:Lcom/sec/android/app/camera/setting/repository/k9;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SELFIE_FOCUS_SKIN_TONE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/ec;->a:Lcom/sec/android/app/camera/setting/repository/ec;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SELFIE_TONE_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/i8;->a:Lcom/sec/android/app/camera/setting/repository/i8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SELFIE_TONE_V2_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/c;->a:Lcom/sec/android/app/camera/setting/repository/c;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SELFIE_TONE_V3_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/n4;->a:Lcom/sec/android/app/camera/setting/repository/n4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SENSOR_CROP:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/m0;->a:Lcom/sec/android/app/camera/setting/repository/m0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SHUTTER_SOUND:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/n8;->a:Lcom/sec/android/app/camera/setting/repository/n8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/nc;->a:Lcom/sec/android/app/camera/setting/repository/nc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_BOKEH_BACKDROP_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/wg;->a:Lcom/sec/android/app/camera/setting/repository/wg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_BOKEH_BACKDROP_LIGHTING_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/a9;->a:Lcom/sec/android/app/camera/setting/repository/a9;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_BOKEH_BIG_BOKEH_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/r7;->a:Lcom/sec/android/app/camera/setting/repository/r7;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_BOKEH_COLOR_POP_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/rb;->a:Lcom/sec/android/app/camera/setting/repository/rb;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_BOKEH_COLOR_POP_LIGHTING_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/t1;->a:Lcom/sec/android/app/camera/setting/repository/t1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_BOKEH_EFFECT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/pc;->a:Lcom/sec/android/app/camera/setting/repository/pc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_BOKEH_HIGH_KEY_MONO_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/gh;->a:Lcom/sec/android/app/camera/setting/repository/gh;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_BOKEH_HIGH_KEY_MONO_LIGHTING_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/ih;->a:Lcom/sec/android/app/camera/setting/repository/ih;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_BOKEH_LENS_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/o;->a:Lcom/sec/android/app/camera/setting/repository/o;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_BOKEH_LOW_KEY_MONO_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/wd;->a:Lcom/sec/android/app/camera/setting/repository/wd;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_BOKEH_LOW_KEY_MONO_LIGHTING_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/o8;->a:Lcom/sec/android/app/camera/setting/repository/o8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_BOKEH_NIGHT_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/ne;->a:Lcom/sec/android/app/camera/setting/repository/ne;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_BOKEH_SPIN_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/j8;->a:Lcom/sec/android/app/camera/setting/repository/j8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_BOKEH_STUDIO_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/mc;->a:Lcom/sec/android/app/camera/setting/repository/mc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_BOKEH_STUDIO_LIGHTING_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/e;->a:Lcom/sec/android/app/camera/setting/repository/e;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_BOKEH_ZOOM_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/bf;->a:Lcom/sec/android/app/camera/setting/repository/bf;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_BOOMERANG:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/ma;->a:Lcom/sec/android/app/camera/setting/repository/ma;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_COLLAGE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/ib;->a:Lcom/sec/android/app/camera/setting/repository/ib;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_CROPPED_SHOT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/id;->a:Lcom/sec/android/app/camera/setting/repository/id;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_DYNAMIC_SLOW_MO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/a4;->a:Lcom/sec/android/app/camera/setting/repository/a4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_FILTERED_PHOTOS:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/j5;->a:Lcom/sec/android/app/camera/setting/repository/j5;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_HIGHLIGHT_VIDEOS:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/va;->a:Lcom/sec/android/app/camera/setting/repository/va;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SMART_SELFIE_ANGLE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/i;->a:Lcom/sec/android/app/camera/setting/repository/i;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SOFTEN_PICTURE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/ng;->a:Lcom/sec/android/app/camera/setting/repository/ng;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SOFTEN_PICTURE_V2:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/dc;->a:Lcom/sec/android/app/camera/setting/repository/dc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SPACE_SAVING_HIGH_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/v9;->a:Lcom/sec/android/app/camera/setting/repository/v9;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->STORAGE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/bh;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/bh;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/p7;->a:Lcom/sec/android/app/camera/setting/repository/p7;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_FRAME_RATE_CONTROL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/o4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/o4;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_STEADY_ZOOM_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/f3;->a:Lcom/sec/android/app/camera/setting/repository/f3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/dg;->a:Lcom/sec/android/app/camera/setting/repository/dg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/pd;->a:Lcom/sec/android/app/camera/setting/repository/pd;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->TIMER_INTERVAL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/y2;->a:Lcom/sec/android/app/camera/setting/repository/y2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->TIMER_SHOT_COUNT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/je;->a:Lcom/sec/android/app/camera/setting/repository/je;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->TIMER_SHOT_INTERVAL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/xe;->a:Lcom/sec/android/app/camera/setting/repository/xe;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->TOUCH_EXPOSURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/eh;->a:Lcom/sec/android/app/camera/setting/repository/eh;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->TOUCH_VIBRATIONS:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/p9;->a:Lcom/sec/android/app/camera/setting/repository/p9;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/z;->a:Lcom/sec/android/app/camera/setting/repository/z;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_ADAPTIVE_LENS_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/yf;->a:Lcom/sec/android/app/camera/setting/repository/yf;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_ADAPTIVE_LENS_STATE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/vg;->a:Lcom/sec/android/app/camera/setting/repository/vg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_APERTURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/vc;->a:Lcom/sec/android/app/camera/setting/repository/vc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_AUTO_FPS:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/y9;->a:Lcom/sec/android/app/camera/setting/repository/y9;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_AUTO_FRAMING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/d7;->a:Lcom/sec/android/app/camera/setting/repository/d7;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_BEAUTY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/s1;->a:Lcom/sec/android/app/camera/setting/repository/s1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_BOKEH_EFFECT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/g8;->a:Lcom/sec/android/app/camera/setting/repository/g8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/yc;->a:Lcom/sec/android/app/camera/setting/repository/yc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/ke;->a:Lcom/sec/android/app/camera/setting/repository/ke;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/k7;->a:Lcom/sec/android/app/camera/setting/repository/k7;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_MY_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/c2;->a:Lcom/sec/android/app/camera/setting/repository/c2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/yd;->a:Lcom/sec/android/app/camera/setting/repository/yd;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIEW_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/qe;->a:Lcom/sec/android/app/camera/setting/repository/qe;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VOICE_CONTROL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/q7;->a:Lcom/sec/android/app/camera/setting/repository/q7;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VOLUME_KEY_TO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/j6;->a:Lcom/sec/android/app/camera/setting/repository/j6;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATCH_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/v8;->a:Lcom/sec/android/app/camera/setting/repository/v8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATCH_TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/w1;->a:Lcom/sec/android/app/camera/setting/repository/w1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATERMARK:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/c6;->a:Lcom/sec/android/app/camera/setting/repository/c6;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATERMARK_ALIGNMENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/xc;->a:Lcom/sec/android/app/camera/setting/repository/xc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATERMARK_DATE_AND_TIME:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/t3;->a:Lcom/sec/android/app/camera/setting/repository/t3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATERMARK_FONT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/bg;->a:Lcom/sec/android/app/camera/setting/repository/bg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATERMARK_MODEL_NAME:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/w8;->a:Lcom/sec/android/app/camera/setting/repository/w8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WHITE_BALANCE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/pa;->a:Lcom/sec/android/app/camera/setting/repository/pa;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WIDE_LENS_CORRECTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/e9;->a:Lcom/sec/android/app/camera/setting/repository/e9;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ZOOM_IN_MIC:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/s5;->a:Lcom/sec/android/app/camera/setting/repository/s5;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/m5;->a:Lcom/sec/android/app/camera/setting/repository/m5;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MOD_VIDEO_BITRATE_0:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/m5;->a:Lcom/sec/android/app/camera/setting/repository/m5;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MOD_VIDEO_BITRATE_1:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/m5;->a:Lcom/sec/android/app/camera/setting/repository/m5;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MOD_VIDEO_BITRATE_2:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/m5;->a:Lcom/sec/android/app/camera/setting/repository/m5;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MOD_VIDEO_BITRATE_3:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/m5;->a:Lcom/sec/android/app/camera/setting/repository/m5;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MOD_VIDEO_BITRATE_4:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/m5;->a:Lcom/sec/android/app/camera/setting/repository/m5;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MOD_VIDEO_BITRATE_5:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/m5;->a:Lcom/sec/android/app/camera/setting/repository/m5;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->values()[Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_1

    return-void

    .line 485
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeDefaultValueGetterMap : Key size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->values()[Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Map size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic j()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$3()I

    move-result v0

    return v0
.end method

.method public static synthetic j0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$405()I

    move-result v0

    return v0
.end method

.method public static synthetic j1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$2()I

    move-result v0

    return v0
.end method

.method public static synthetic j2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$371()I

    move-result v0

    return v0
.end method

.method public static synthetic j3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$63()I

    move-result v0

    return v0
.end method

.method public static synthetic j4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$41()I

    move-result v0

    return v0
.end method

.method public static synthetic j5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$266()I

    move-result v0

    return v0
.end method

.method public static synthetic j6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$92()I

    move-result v0

    return v0
.end method

.method public static synthetic j7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$296()I

    move-result v0

    return v0
.end method

.method public static synthetic j8()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$285()I

    move-result v0

    return v0
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getBackCamcorderProResolution()I

    move-result p0

    return p0
.end method

.method public static synthetic k0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$164()I

    move-result v0

    return v0
.end method

.method public static synthetic k1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$396()I

    move-result v0

    return v0
.end method

.method public static synthetic k2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$311()I

    move-result v0

    return v0
.end method

.method public static synthetic k3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$242()I

    move-result v0

    return v0
.end method

.method public static synthetic k4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$348()I

    move-result v0

    return v0
.end method

.method public static synthetic k5(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getDefaultSuperSlowMotionFrcTime()I

    move-result p0

    return p0
.end method

.method public static synthetic k6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$376()I

    move-result v0

    return v0
.end method

.method public static synthetic k7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$127()I

    move-result v0

    return v0
.end method

.method public static synthetic k8()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$262()I

    move-result v0

    return v0
.end method

.method public static synthetic l()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$84()I

    move-result v0

    return v0
.end method

.method public static synthetic l0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$406()I

    move-result v0

    return v0
.end method

.method public static synthetic l1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$79()I

    move-result v0

    return v0
.end method

.method public static synthetic l2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$182()I

    move-result v0

    return v0
.end method

.method public static synthetic l3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$322()I

    move-result v0

    return v0
.end method

.method public static synthetic l4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$241()I

    move-result v0

    return v0
.end method

.method public static synthetic l5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$172()I

    move-result v0

    return v0
.end method

.method public static synthetic l6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$186()I

    move-result v0

    return v0
.end method

.method public static synthetic l7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$287()I

    move-result v0

    return v0
.end method

.method public static synthetic l8()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$364()I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$0()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$1()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$10()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$100()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$101()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$102()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$103()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$104()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$105()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$106()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$107()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$108()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$109()I
    .locals 1

    const/16 v0, 0x37

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$11()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$110()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$111()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$112()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$113()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$114()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$115()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$116()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$117()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$118()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$119()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$12()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$120()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$121()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$122()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$123()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$124()I
    .locals 1

    const/16 v0, 0x37

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$125()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$126()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$127()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$128()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$129()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$13()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$130()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$131()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$132()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$133()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$134()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$135()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$136()I
    .locals 1

    sget-object v0, Lr2/b;->T1:Lr2/b;

    invoke-static {v0}, Lr2/d;->e(Lr2/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$137()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$138()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$139()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$14()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$140()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$141()I
    .locals 1

    const/16 v0, 0x37

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$142()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$143()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$144()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$145()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$146()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$147()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$148()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$149()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$15()I
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUTO_HDR:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$150()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$151()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$152()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$153()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$154()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$155()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$156()I
    .locals 1

    const/16 v0, 0x37

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$157()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$158()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$159()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$16()I
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUTO_LENS_SWITCHING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$160()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$161()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$162()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$163()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$164()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$165()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$166()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$167()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$168()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$169()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$17()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$170()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$171()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$172()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$173()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$174()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$175()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$176()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$177()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$178()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$179()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$18()I
    .locals 1

    sget-object v0, Lr2/h;->g:Lr2/h;

    invoke-static {v0}, Lr2/d;->b(Lr2/h;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$180()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$181()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$182()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$183()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$184()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$185()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$186()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$187()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$188()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$189()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$19()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$190()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$191()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$192()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$193()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$194()I
    .locals 1

    const/16 v0, 0x37

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$195()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$196()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$197()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$198()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$199()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$2()I
    .locals 1

    sget-object v0, Lr2/b;->f:Lr2/b;

    invoke-static {v0}, Lr2/d;->e(Lr2/b;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$20()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$200()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$201()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$202()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$203()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$204()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$205()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$206()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$207()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$208()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$209()I
    .locals 1

    const/16 v0, 0x37

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$21()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$210()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$211()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$212()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$213()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$214()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$215()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$216()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$217()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$218()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$219()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$22()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$220()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$221()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BOKEH_EFFECT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$222()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$223()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMCORDER_RATIO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$224()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$225()I
    .locals 1

    const/high16 v0, -0x80000000

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$226()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMERA_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$227()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$228()I
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAPTURE_WHEN_PRESSED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$229()I
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CLEAN_HDMI:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$23()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$230()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$231()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$232()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$233()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$234()I
    .locals 1

    sget-object v0, Lr2/b;->i0:Lr2/b;

    invoke-static {v0}, Lr2/d;->e(Lr2/b;)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$235()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$236()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$237()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$238()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$239()I
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FAST_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$24()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$240()I
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FAST_SHUTTER_OPTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$241()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$242()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$243()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$244()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$245()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FOCUS_ENHANCER_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$246()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FOCUS_ENHANCER_STATE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$247()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$248()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$249()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$25()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$250()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$251()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$252()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$253()I
    .locals 1

    sget-object v0, Lr2/h;->g:Lr2/h;

    invoke-static {v0}, Lr2/d;->b(Lr2/h;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$254()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$255()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$256()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$257()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$258()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$259()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$26()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$260()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$261()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$262()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$263()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$264()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$265()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$266()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$267()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$268()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$269()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$27()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$270()I
    .locals 1

    sget-object v0, Lr2/l;->V:Lr2/l;

    invoke-static {v0}, Lr2/d;->c(Lr2/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private synthetic lambda$initializeDefaultValueGetterMap$271()I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getFrontCamcorderProResolution()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$272()I
    .locals 1

    sget-object v0, Lr2/l;->v:Lr2/l;

    invoke-static {v0}, Lr2/d;->c(Lr2/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$273()I
    .locals 1

    sget-object v0, Lr2/l;->S:Lr2/l;

    invoke-static {v0}, Lr2/d;->c(Lr2/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private synthetic lambda$initializeDefaultValueGetterMap$274()I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getFrontCamcorderResolution()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$275()I
    .locals 1

    sget-object v0, Lr2/l;->v:Lr2/l;

    invoke-static {v0}, Lr2/d;->c(Lr2/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$276()I
    .locals 3

    sget-object v0, Lr2/l;->v:Lr2/l;

    invoke-static {v0}, Lr2/d;->c(Lr2/l;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/AspectRatio;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/AspectRatio;->RATIO_16x9:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lr2/l;->S:Lr2/l;

    :goto_0
    invoke-static {v0}, Lr2/d;->c(Lr2/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$277()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$initializeDefaultValueGetterMap$278()I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getFrontCameraResolution()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureRatio(I)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$279()I
    .locals 1

    sget-object v0, Lr2/l;->u:Lr2/l;

    invoke-static {v0}, Lr2/d;->c(Lr2/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$28()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$280()I
    .locals 1

    sget-object v0, Lr2/l;->z:Lr2/l;

    invoke-static {v0}, Lr2/d;->c(Lr2/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$281()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$282()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$283()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$284()I
    .locals 1

    sget-object v0, Lr2/h;->g:Lr2/h;

    invoke-static {v0}, Lr2/d;->b(Lr2/h;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$285()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$286()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$287()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$288()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$289()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$29()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$290()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$291()I
    .locals 1

    const/16 v0, 0x37

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$292()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$293()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$294()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$295()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$296()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$297()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$298()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$299()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$3()I
    .locals 1

    sget-object v0, Lr2/b;->f:Lr2/b;

    invoke-static {v0}, Lr2/d;->e(Lr2/b;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$30()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$300()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$301()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$302()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$303()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$304()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$305()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$306()I
    .locals 1

    const/16 v0, 0x37

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$307()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$308()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$309()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$31()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$310()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$311()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$312()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$313()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$314()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$315()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$316()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$317()I
    .locals 1

    sget-object v0, Lr2/b;->T1:Lr2/b;

    invoke-static {v0}, Lr2/d;->e(Lr2/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$318()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$319()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$32()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$320()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$321()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$322()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$323()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$324()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$325()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$326()I
    .locals 1

    sget-object v0, Lr2/b;->T1:Lr2/b;

    invoke-static {v0}, Lr2/d;->e(Lr2/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$327()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$328()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$329()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$33()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$330()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$331()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$332()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$333()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$334()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$335()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$336()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$337()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$338()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$339()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$34()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$340()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$341()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$342()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$343()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$344()I
    .locals 1

    sget-object v0, Lr2/b;->d0:Lr2/b;

    invoke-static {v0}, Lr2/d;->e(Lr2/b;)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$345()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$346()I
    .locals 1

    sget-object v0, Lr2/b;->d0:Lr2/b;

    invoke-static {v0}, Lr2/d;->e(Lr2/b;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$347()I
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HIGH_RESOLUTION_FAST_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$348()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$349()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HYPERLAPSE_DURATION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$35()I
    .locals 1

    sget-object v0, Lr2/l;->V:Lr2/l;

    invoke-static {v0}, Lr2/d;->c(Lr2/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$350()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$351()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT_AUTO_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$352()I
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->INACTIVITY_TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$353()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$354()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$355()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$356()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$357()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$358()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$359()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$36()I
    .locals 1

    sget-object v0, Lr2/l;->V:Lr2/l;

    invoke-static {v0}, Lr2/d;->c(Lr2/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$360()I
    .locals 1

    const/16 v0, 0x37

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$361()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$362()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$363()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MANUAL_COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$364()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MANUAL_COLOR_TUNE_LAST_USED_OPTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$365()I
    .locals 1

    const/high16 v0, -0x80000000

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$366()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$367()I
    .locals 1

    sget-object v0, Lr2/b;->V0:Lr2/b;

    invoke-static {v0}, Lr2/d;->e(Lr2/b;)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$368()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$369()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$initializeDefaultValueGetterMap$37()I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getBackCamcorderProResolution()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$370()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$371()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$372()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$373()I
    .locals 1

    sget-object v0, Lr2/b;->f:Lr2/b;

    invoke-static {v0}, Lr2/d;->e(Lr2/b;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$374()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->PHOTO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$375()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->PHOTO_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$376()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->PHOTO_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$377()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->PHOTO_MY_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$378()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$379()I
    .locals 1

    const/high16 v0, -0x80000000

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$38()I
    .locals 1

    sget-object v0, Lr2/l;->b:Lr2/l;

    invoke-static {v0}, Lr2/d;->c(Lr2/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$380()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$381()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$382()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$383()I
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QUICK_TAKE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$384()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$385()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$386()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$387()I
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->RECORDING_INACTIVITY_TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$388()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$389()I
    .locals 1

    sget-object v0, Lr2/b;->e0:Lr2/b;

    invoke-static {v0}, Lr2/d;->e(Lr2/b;)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$39()I
    .locals 1

    sget-object v0, Lr2/l;->S:Lr2/l;

    invoke-static {v0}, Lr2/d;->c(Lr2/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$390()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$391()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$392()I
    .locals 1

    sget-object v0, Lr2/h;->g:Lr2/h;

    invoke-static {v0}, Lr2/d;->b(Lr2/h;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$393()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$394()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$395()I
    .locals 1

    sget-object v0, Lr2/b;->d:Lr2/b;

    invoke-static {v0}, Lr2/d;->e(Lr2/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$396()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$397()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$398()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$399()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$4()I
    .locals 1

    sget-object v0, Lr2/b;->f:Lr2/b;

    invoke-static {v0}, Lr2/d;->e(Lr2/b;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic lambda$initializeDefaultValueGetterMap$40()I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getBackCamcorderResolution()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$400()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$401()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$402()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$403()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$404()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$405()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$406()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$407()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$408()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$409()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$41()I
    .locals 1

    sget-object v0, Lr2/l;->d:Lr2/l;

    invoke-static {v0}, Lr2/d;->c(Lr2/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$410()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$411()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$412()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$413()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$414()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$415()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$416()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$417()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$418()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$419()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private synthetic lambda$initializeDefaultValueGetterMap$42()I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getBackCamcorderSuperSteadyResolution()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$420()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$421()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$422()I
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SOFTEN_PICTURE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$423()I
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SOFTEN_PICTURE_V2:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$424()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$425()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$426()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$427()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$428()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$429()I
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->TIMER_INTERVAL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$43()I
    .locals 3

    sget-object v0, Lr2/l;->d:Lr2/l;

    invoke-static {v0}, Lr2/d;->c(Lr2/l;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/AspectRatio;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/AspectRatio;->RATIO_16x9:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lr2/l;->S:Lr2/l;

    :goto_0
    invoke-static {v0}, Lr2/d;->c(Lr2/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$430()I
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->TIMER_SHOT_COUNT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$431()I
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->TIMER_SHOT_INTERVAL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$432()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$433()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$434()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$435()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$436()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$437()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$438()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$439()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$44()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$440()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_BEAUTY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$441()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_BOKEH_EFFECT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$442()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$443()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$444()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$445()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_MY_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$446()I
    .locals 1

    sget-object v0, Lr2/b;->P:Lr2/b;

    invoke-static {v0}, Lr2/d;->e(Lr2/b;)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$447()I
    .locals 1

    sget-object v0, Lr2/b;->h1:Lr2/b;

    invoke-static {v0}, Lr2/d;->e(Lr2/b;)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$448()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$449()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$45()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$450()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$451()I
    .locals 1

    const/high16 v0, -0x80000000

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$452()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$453()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$454()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$455()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$456()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$457()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$458()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$459()I
    .locals 1

    sget-object v0, Lr2/b;->z1:Lr2/b;

    invoke-static {v0}, Lr2/d;->e(Lr2/b;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$initializeDefaultValueGetterMap$46()I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getBackCameraResolution()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureRatio(I)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$460()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$47()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$48()I
    .locals 1

    sget-object v0, Lr2/l;->a:Lr2/l;

    invoke-static {v0}, Lr2/d;->c(Lr2/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$49()I
    .locals 1

    sget-object v0, Lr2/l;->k:Lr2/l;

    invoke-static {v0}, Lr2/d;->c(Lr2/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$5()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$50()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$51()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$52()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$53()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$54()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$55()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$56()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$57()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$58()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$59()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$6()I
    .locals 1

    const/high16 v0, -0x80000000

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$60()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$61()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$62()I
    .locals 1

    const/16 v0, 0x37

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$63()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$64()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$65()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$66()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$67()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$68()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$69()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$7()I
    .locals 1

    const/high16 v0, -0x80000000

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$70()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$71()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$72()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$73()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$74()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$75()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$76()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$77()I
    .locals 1

    const/16 v0, 0x37

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$78()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$79()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$8()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$80()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$81()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$82()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$83()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$84()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$85()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$86()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$87()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$88()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$89()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$9()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$90()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$91()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$92()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$93()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$94()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$95()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$96()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$97()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$98()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultValueGetterMap$99()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$overrideValueGetterMap$461()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$overrideValueSetterMap$462(I)V
    .locals 1

    const-string p0, "AbstractCameraSettings"

    const-string v0, "setMultiWindowMode : ignore this case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic m()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$245()I

    move-result v0

    return v0
.end method

.method public static synthetic m0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$4()I

    move-result v0

    return v0
.end method

.method public static synthetic m1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$222()I

    move-result v0

    return v0
.end method

.method public static synthetic m2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$365()I

    move-result v0

    return v0
.end method

.method public static synthetic m3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$162()I

    move-result v0

    return v0
.end method

.method public static synthetic m4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$389()I

    move-result v0

    return v0
.end method

.method public static synthetic m5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$377()I

    move-result v0

    return v0
.end method

.method public static synthetic m6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$276()I

    move-result v0

    return v0
.end method

.method public static synthetic m7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$299()I

    move-result v0

    return v0
.end method

.method public static synthetic m8()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$431()I

    move-result v0

    return v0
.end method

.method public static synthetic n()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$132()I

    move-result v0

    return v0
.end method

.method public static synthetic n0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$116()I

    move-result v0

    return v0
.end method

.method public static synthetic n1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$284()I

    move-result v0

    return v0
.end method

.method public static synthetic n2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$224()I

    move-result v0

    return v0
.end method

.method public static synthetic n3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$345()I

    move-result v0

    return v0
.end method

.method public static synthetic n4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$331()I

    move-result v0

    return v0
.end method

.method public static synthetic n5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$214()I

    move-result v0

    return v0
.end method

.method public static synthetic n6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$115()I

    move-result v0

    return v0
.end method

.method public static synthetic n7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$437()I

    move-result v0

    return v0
.end method

.method public static synthetic n8()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$19()I

    move-result v0

    return v0
.end method

.method public static synthetic o()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$160()I

    move-result v0

    return v0
.end method

.method public static synthetic o0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$161()I

    move-result v0

    return v0
.end method

.method public static synthetic o1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$367()I

    move-result v0

    return v0
.end method

.method public static synthetic o2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$65()I

    move-result v0

    return v0
.end method

.method public static synthetic o3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$358()I

    move-result v0

    return v0
.end method

.method public static synthetic o4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$10()I

    move-result v0

    return v0
.end method

.method public static synthetic o5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$207()I

    move-result v0

    return v0
.end method

.method public static synthetic o6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$420()I

    move-result v0

    return v0
.end method

.method public static synthetic o7(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getBackCameraResolution()I

    move-result p0

    return p0
.end method

.method public static synthetic o8()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$136()I

    move-result v0

    return v0
.end method

.method private overrideValueGetterMap()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/s3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/s3;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/r6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/r6;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/h3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/h3;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/qg;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/qg;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/fg;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/fg;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/d1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/d1;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_PRO_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/o7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/o7;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MULTI_WINDOW_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/af;->a:Lcom/sec/android/app/camera/setting/repository/af;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/l;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/l;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SOFTEN_PICTURE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/g3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/g3;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->TIMER_SHOT_COUNT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/k5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/k5;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private overrideValueSetterMap()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/rf;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/rf;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/of;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/of;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/lf;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/lf;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/kf;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/kf;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/nf;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/nf;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_PRO_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/pf;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/pf;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/jf;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/jf;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MULTI_WINDOW_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/sf;->a:Lcom/sec/android/app/camera/setting/repository/sf;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/mf;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/mf;-><init>(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic p()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$73()I

    move-result v0

    return v0
.end method

.method public static synthetic p0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$232()I

    move-result v0

    return v0
.end method

.method public static synthetic p1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$280()I

    move-result v0

    return v0
.end method

.method public static synthetic p2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$38()I

    move-result v0

    return v0
.end method

.method public static synthetic p3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$374()I

    move-result v0

    return v0
.end method

.method public static synthetic p4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$165()I

    move-result v0

    return v0
.end method

.method public static synthetic p5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$456()I

    move-result v0

    return v0
.end method

.method public static synthetic p6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$89()I

    move-result v0

    return v0
.end method

.method public static synthetic p7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$307()I

    move-result v0

    return v0
.end method

.method public static synthetic p8()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$overrideValueGetterMap$461()I

    move-result v0

    return v0
.end method

.method public static synthetic q()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$113()I

    move-result v0

    return v0
.end method

.method public static synthetic q0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$53()I

    move-result v0

    return v0
.end method

.method public static synthetic q1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$289()I

    move-result v0

    return v0
.end method

.method public static synthetic q2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$187()I

    move-result v0

    return v0
.end method

.method public static synthetic q3(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getFrontCameraResolution()I

    move-result p0

    return p0
.end method

.method public static synthetic q4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$123()I

    move-result v0

    return v0
.end method

.method public static synthetic q5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$197()I

    move-result v0

    return v0
.end method

.method public static synthetic q6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$36()I

    move-result v0

    return v0
.end method

.method public static synthetic q7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$453()I

    move-result v0

    return v0
.end method

.method public static synthetic q8()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$414()I

    move-result v0

    return v0
.end method

.method public static synthetic r()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$226()I

    move-result v0

    return v0
.end method

.method public static synthetic r0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$110()I

    move-result v0

    return v0
.end method

.method public static synthetic r1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$72()I

    move-result v0

    return v0
.end method

.method public static synthetic r2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$39()I

    move-result v0

    return v0
.end method

.method public static synthetic r3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$249()I

    move-result v0

    return v0
.end method

.method public static synthetic r4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$188()I

    move-result v0

    return v0
.end method

.method public static synthetic r5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$327()I

    move-result v0

    return v0
.end method

.method public static synthetic r6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$155()I

    move-result v0

    return v0
.end method

.method public static synthetic r7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$442()I

    move-result v0

    return v0
.end method

.method public static synthetic r8()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$135()I

    move-result v0

    return v0
.end method

.method public static synthetic s()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$446()I

    move-result v0

    return v0
.end method

.method public static synthetic s0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$286()I

    move-result v0

    return v0
.end method

.method public static synthetic s1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$308()I

    move-result v0

    return v0
.end method

.method public static synthetic s2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$103()I

    move-result v0

    return v0
.end method

.method public static synthetic s3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$198()I

    move-result v0

    return v0
.end method

.method public static synthetic s4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$211()I

    move-result v0

    return v0
.end method

.method public static synthetic s5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$131()I

    move-result v0

    return v0
.end method

.method public static synthetic s6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$383()I

    move-result v0

    return v0
.end method

.method public static synthetic s7(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->setBackCamcorderResolution(I)V

    return-void
.end method

.method public static synthetic s8()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$216()I

    move-result v0

    return v0
.end method

.method private setBackCamcorderProResolution(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->handleSettingChanged(I)V

    .line 3
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderRatio(I)I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderRatio(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RATIO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->handleSettingChanged(I)V

    :cond_0
    return-void
.end method

.method private setBackCamcorderResolution(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBackCamcorderResolution "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractCameraSettings"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->handleSettingChanged(I)V

    .line 4
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderRatio(I)I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderRatio(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RATIO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->handleSettingChanged(I)V

    :cond_0
    return-void
.end method

.method private setBackCamcorderSuperSteadyResolution(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->handleSettingChanged(I)V

    .line 3
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderRatio(I)I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderRatio(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RATIO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->handleSettingChanged(I)V

    :cond_0
    return-void
.end method

.method private setBackCameraResolution(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBackCameraResolution "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractCameraSettings"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->handleSettingChanged(I)V

    .line 4
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureRatio(I)I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureRatio(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMERA_PICTURE_RATIO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureRatio(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->handleSettingChanged(I)V

    :cond_0
    return-void
.end method

.method private setFrontCamcorderProResolution(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_PRO_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFrontCamcorderProResolution "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractCameraSettings"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->handleSettingChanged(I)V

    .line 4
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderRatio(I)I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderRatio(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_PRO_RATIO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->handleSettingChanged(I)V

    :cond_0
    return-void
.end method

.method private setFrontCamcorderResolution(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFrontCamcorderResolution "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractCameraSettings"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->handleSettingChanged(I)V

    .line 4
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderRatio(I)I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderRatio(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RATIO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->handleSettingChanged(I)V

    :cond_0
    return-void
.end method

.method private setFrontCameraResolution(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFrontCameraResolution "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractCameraSettings"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->handleSettingChanged(I)V

    .line 4
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureRatio(I)I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureRatio(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMERA_PICTURE_RATIO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureRatio(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->handleSettingChanged(I)V

    :cond_0
    return-void
.end method

.method private setQuickLaunch(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getQuickLaunch()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setQuickLaunch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractCameraSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "double_tab_launch"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/setting/repository/SettingValue;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/repository/SettingValue;->handleSettingChanged(I)V

    :cond_0
    return-void
.end method

.method public static synthetic t()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$430()I

    move-result v0

    return v0
.end method

.method public static synthetic t0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$97()I

    move-result v0

    return v0
.end method

.method public static synthetic t1(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$46()I

    move-result p0

    return p0
.end method

.method public static synthetic t2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$429()I

    move-result v0

    return v0
.end method

.method public static synthetic t3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$154()I

    move-result v0

    return v0
.end method

.method public static synthetic t4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$343()I

    move-result v0

    return v0
.end method

.method public static synthetic t5(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->setFrontCamcorderResolution(I)V

    return-void
.end method

.method public static synthetic t6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$34()I

    move-result v0

    return v0
.end method

.method public static synthetic t7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$323()I

    move-result v0

    return v0
.end method

.method public static synthetic t8()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$205()I

    move-result v0

    return v0
.end method

.method public static synthetic u()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$68()I

    move-result v0

    return v0
.end method

.method public static synthetic u0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$260()I

    move-result v0

    return v0
.end method

.method public static synthetic u1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$347()I

    move-result v0

    return v0
.end method

.method public static synthetic u2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$386()I

    move-result v0

    return v0
.end method

.method public static synthetic u3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$304()I

    move-result v0

    return v0
.end method

.method public static synthetic u4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$61()I

    move-result v0

    return v0
.end method

.method public static synthetic u5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$400()I

    move-result v0

    return v0
.end method

.method public static synthetic u6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$379()I

    move-result v0

    return v0
.end method

.method public static synthetic u7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$330()I

    move-result v0

    return v0
.end method

.method public static synthetic u8()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$390()I

    move-result v0

    return v0
.end method

.method public static synthetic v()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$250()I

    move-result v0

    return v0
.end method

.method public static synthetic v0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$138()I

    move-result v0

    return v0
.end method

.method public static synthetic v1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$52()I

    move-result v0

    return v0
.end method

.method public static synthetic v2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$18()I

    move-result v0

    return v0
.end method

.method public static synthetic v3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$297()I

    move-result v0

    return v0
.end method

.method public static synthetic v4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$439()I

    move-result v0

    return v0
.end method

.method public static synthetic v5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$320()I

    move-result v0

    return v0
.end method

.method public static synthetic v6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$7()I

    move-result v0

    return v0
.end method

.method public static synthetic v7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$76()I

    move-result v0

    return v0
.end method

.method public static synthetic v8()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$16()I

    move-result v0

    return v0
.end method

.method public static synthetic w()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$107()I

    move-result v0

    return v0
.end method

.method public static synthetic w0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$27()I

    move-result v0

    return v0
.end method

.method public static synthetic w1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$233()I

    move-result v0

    return v0
.end method

.method public static synthetic w2(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$278()I

    move-result p0

    return p0
.end method

.method public static synthetic w3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$354()I

    move-result v0

    return v0
.end method

.method public static synthetic w4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$111()I

    move-result v0

    return v0
.end method

.method public static synthetic w5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$149()I

    move-result v0

    return v0
.end method

.method public static synthetic w6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$282()I

    move-result v0

    return v0
.end method

.method public static synthetic w7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$319()I

    move-result v0

    return v0
.end method

.method public static synthetic w8()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$279()I

    move-result v0

    return v0
.end method

.method public static synthetic x()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$270()I

    move-result v0

    return v0
.end method

.method public static synthetic x0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$375()I

    move-result v0

    return v0
.end method

.method public static synthetic x1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$54()I

    move-result v0

    return v0
.end method

.method public static synthetic x2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$325()I

    move-result v0

    return v0
.end method

.method public static synthetic x3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$378()I

    move-result v0

    return v0
.end method

.method public static synthetic x4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$192()I

    move-result v0

    return v0
.end method

.method public static synthetic x5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$380()I

    move-result v0

    return v0
.end method

.method public static synthetic x6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$213()I

    move-result v0

    return v0
.end method

.method public static synthetic x7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$156()I

    move-result v0

    return v0
.end method

.method public static synthetic y()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$268()I

    move-result v0

    return v0
.end method

.method public static synthetic y0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$151()I

    move-result v0

    return v0
.end method

.method public static synthetic y1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$181()I

    move-result v0

    return v0
.end method

.method public static synthetic y2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$74()I

    move-result v0

    return v0
.end method

.method public static synthetic y3(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getDefaultBackCameraPanoramaLensType()I

    move-result p0

    return p0
.end method

.method public static synthetic y4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$130()I

    move-result v0

    return v0
.end method

.method public static synthetic y5()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$458()I

    move-result v0

    return v0
.end method

.method public static synthetic y6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$64()I

    move-result v0

    return v0
.end method

.method public static synthetic y7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$9()I

    move-result v0

    return v0
.end method

.method public static synthetic z()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$95()I

    move-result v0

    return v0
.end method

.method public static synthetic z0()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$147()I

    move-result v0

    return v0
.end method

.method public static synthetic z1()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$47()I

    move-result v0

    return v0
.end method

.method public static synthetic z2()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$273()I

    move-result v0

    return v0
.end method

.method public static synthetic z3()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$251()I

    move-result v0

    return v0
.end method

.method public static synthetic z4()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$305()I

    move-result v0

    return v0
.end method

.method public static synthetic z5(Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->getDefaultMotionSpeed()I

    move-result p0

    return p0
.end method

.method public static synthetic z6()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$194()I

    move-result v0

    return v0
.end method

.method public static synthetic z7()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->lambda$initializeDefaultValueGetterMap$193()I

    move-result v0

    return v0
.end method


# virtual methods
.method getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/setting/repository/ValueGetter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/setting/repository/ValueGetter;->get()I

    move-result p0

    return p0
.end method

.method getSettingKeyMap()Ljava/util/EnumMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;",
            "Lcom/sec/android/app/camera/setting/repository/SettingValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    return-object p0
.end method

.method getValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/setting/repository/ValueGetter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/setting/repository/ValueGetter;->get()I

    move-result p0

    return p0
.end method

.method abstract isResizableMode()Z
.end method

.method setValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/setting/repository/ValueSetter;

    invoke-interface {p0, p2}, Lcom/sec/android/app/camera/setting/repository/ValueSetter;->set(I)V

    return-void
.end method
