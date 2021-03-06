.class public Lcom/gamayun/explosivetrucksfree/ActivityPlay;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamayun/explosivetrucksfree/ActivityPlay$MyGLSurfaceView;,
        Lcom/gamayun/explosivetrucksfree/ActivityPlay$UnpackTask;
    }
.end annotation


# static fields
.field private static Dialog:Landroid/app/ProgressDialog; = null

.field public static final FPS_60:Z = false

.field public static final ID_Ad_Gamayun:Ljava/lang/String; = "a1503a1490e48b0"

.field public static final ID_Ad_NOTGamayun:Ljava/lang/String; = "a1503a1490e48b0"

.field public static final MSG_DELETEFILE:I = 0x4

.field public static final MSG_FREEAD:I = 0x8

.field public static final MSG_INITAD:I = 0x7

.field public static final MSG_INITDIALOG_END:I = 0x10

.field public static final MSG_OPENURL:I = 0x5

.field public static final MSG_PLAYMUSIC:I = 0x1

.field public static final MSG_PREPARETOFINISH:I = 0xd

.field public static final MSG_REQUESTPURCHASEPAYMENT:I = 0xf

.field public static final MSG_REQUESTPURCHASEPRODUCTDATA:I = 0xe

.field public static final MSG_SETMUSICVOLUME:I = 0xb

.field public static final MSG_SHOWDIALOGFROMURL:I = 0x3

.field public static final MSG_SHOWSIMPLEDIALOG:I = 0x2

.field public static final MSG_STARTURL:I = 0x6

.field public static final MSG_STARTVIDEO:I = 0x9

.field public static final MSG_STOPMUSIC:I = 0xc

.field public static final MSG_STOPVIDEO:I = 0xa

.field private static final NO_SLEEP_TOUCHEVENT:Z = false

.field private static final NO_USE_SENSOR:Z = false

.field private static final TWO_INV_PI:F = 0.63661975f

.field private static USE_SENSOR_GETORIENTATION:I = 0x0

.field public static ValTrigger:I = 0x0

.field public static ValTriggerAD:I = 0x0

.field public static ValTriggerInAppPurchase:I = 0x0

.field public static ValTriggerMusic:I = 0x0

.field static adView:Lcom/google/ads/AdView; = null

.field static adsParams:Landroid/widget/RelativeLayout$LayoutParams; = null

.field private static bAutoAd:Z = false

.field static bBackFromAD:Ljava/lang/Boolean; = null

.field static bBackFromInAppPurchase:Ljava/lang/Boolean; = null

.field static bBackFromMusicCompletion:Ljava/lang/Boolean; = null

.field static bBackFromStartURL:Ljava/lang/Boolean; = null

.field static bMpPrepared:Ljava/lang/Boolean; = null

.field public static bWaitOnCreate:Ljava/lang/Boolean; = null

.field private static freemium_has_advertisement:Z = false

.field static layout:Landroid/widget/RelativeLayout; = null

.field public static mGLView:Lcom/gamayun/explosivetrucksfree/ActivityPlay$MyGLSurfaceView; = null

.field public static final mHandler:Landroid/os/Handler;

.field static mp:Landroid/media/MediaPlayer; = null

.field public static final percentOfAdsToGamayun:D = 50.0

.field public static stContext:Landroid/content/Context;


# instance fields
.field bHasAccel:Z

.field isMultiTouch:Z

.field public mSecondHandler:Landroid/os/Handler;

.field private myRenderer:Lcom/gamayun/explosivetrucksfree/MyRenderer;

.field public ot:I

.field public pathToDatas:Ljava/lang/String;

.field public rot:I

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    sput-boolean v3, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->freemium_has_advertisement:Z

    const/4 v0, 0x2

    sput v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->USE_SENSOR_GETORIENTATION:I

    const-string v0, "DG"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->bWaitOnCreate:Ljava/lang/Boolean;

    sput-object v4, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->Dialog:Landroid/app/ProgressDialog;

    sput-object v4, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->mp:Landroid/media/MediaPlayer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->bMpPrepared:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->bBackFromStartURL:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->bBackFromMusicCompletion:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->bBackFromInAppPurchase:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->bBackFromAD:Ljava/lang/Boolean;

    sput-boolean v3, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->bAutoAd:Z

    sput-object v4, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->adView:Lcom/google/ads/AdView;

    sput v2, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->ValTrigger:I

    sput v2, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->ValTriggerMusic:I

    sput v2, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->ValTriggerInAppPurchase:I

    const v0, -0x30d40

    sput v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->ValTriggerAD:I

    new-instance v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay$2;

    invoke-direct {v0}, Lcom/gamayun/explosivetrucksfree/ActivityPlay$2;-><init>()V

    sput-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->sensorManager:Landroid/hardware/SensorManager;

    iput-boolean v1, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->bHasAccel:Z

    iput-boolean v1, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->isMultiTouch:Z

    new-instance v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay$1;

    invoke-direct {v0, p0}, Lcom/gamayun/explosivetrucksfree/ActivityPlay$1;-><init>(Lcom/gamayun/explosivetrucksfree/ActivityPlay;)V

    iput-object v0, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->mSecondHandler:Landroid/os/Handler;

    return-void
.end method

.method public static native AndroidStopAllWav()V
.end method

.method static synthetic access$0(Lcom/gamayun/explosivetrucksfree/ActivityPlay;)Lcom/gamayun/explosivetrucksfree/MyRenderer;
    .registers 2

    iget-object v0, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->myRenderer:Lcom/gamayun/explosivetrucksfree/MyRenderer;

    return-object v0
.end method

.method static synthetic access$1()Landroid/app/ProgressDialog;
    .registers 1

    sget-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->Dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Landroid/app/ProgressDialog;)V
    .registers 1

    sput-object p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->Dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$3()Z
    .registers 1

    sget-boolean v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->freemium_has_advertisement:Z

    return v0
.end method

.method static synthetic access$4(Z)V
    .registers 1

    sput-boolean p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->bAutoAd:Z

    return-void
.end method

.method static synthetic access$5()Z
    .registers 1

    sget-boolean v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->bAutoAd:Z

    return v0
.end method

.method static synthetic access$6(Lcom/gamayun/explosivetrucksfree/ActivityPlay;Lcom/gamayun/explosivetrucksfree/MyRenderer;)V
    .registers 2

    iput-object p1, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->myRenderer:Lcom/gamayun/explosivetrucksfree/MyRenderer;

    return-void
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    const-string v1, ""

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v0

    :goto_f
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    :goto_15
    return-object v1

    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_26} :catch_29
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_26} :catch_2e

    move-result-object v0

    move-object v1, v0

    goto :goto_f

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    :catch_2e
    move-exception v0

    goto :goto_15
.end method

.method static pauseGame()V
    .registers 1

    :try_start_0
    invoke-static {}, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->AndroidStopAllWav()V

    sget-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->bMpPrepared:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    :cond_1c
    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    goto :goto_1c
.end method

.method static resumeGame()V
    .registers 1

    :try_start_0
    sget-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->bMpPrepared:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    goto :goto_19
.end method


# virtual methods
.method public native AndroidAccelerometer(FFF)V
.end method

.method public native AndroidGameKeyDown(I)V
.end method

.method public native AndroidGameKeyUp(I)V
.end method

.method public native AndroidSetPath(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native AndroidUninit()V
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/16 v3, 0x200

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/gamegod/touydig;->init(Landroid/content/Context;)V

    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->setContentView(I)V

    sput-object p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->stContext:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->bWaitOnCreate:Ljava/lang/Boolean;

    const/4 v0, 0x0

    sput-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->Dialog:Landroid/app/ProgressDialog;

    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sput-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v0, "1.0"

    :try_start_33
    invoke-virtual {p0}, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_42
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_33 .. :try_end_42} :catch_1bd
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_42} :catch_1f3

    :goto_42
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Android"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/high16 v5, 0x7f050000

    invoke-virtual {p0, v5}, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "files"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->pathToDatas:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->pathToDatas:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DATAS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/gamayun/explosivetrucksfree/ActivityPlay$MyGLSurfaceView;

    invoke-direct {v3, p0, p0}, Lcom/gamayun/explosivetrucksfree/ActivityPlay$MyGLSurfaceView;-><init>(Lcom/gamayun/explosivetrucksfree/ActivityPlay;Landroid/app/Activity;)V

    sput-object v3, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->mGLView:Lcom/gamayun/explosivetrucksfree/ActivityPlay$MyGLSurfaceView;

    iget-object v3, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->myRenderer:Lcom/gamayun/explosivetrucksfree/MyRenderer;

    iput-boolean v2, v3, Lcom/gamayun/explosivetrucksfree/MyRenderer;->bReadyToRender:Z

    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->Dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1c2

    new-instance v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay$UnpackTask;

    invoke-direct {v0, p0}, Lcom/gamayun/explosivetrucksfree/ActivityPlay$UnpackTask;-><init>(Lcom/gamayun/explosivetrucksfree/ActivityPlay;)V

    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->pathToDatas:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/gamayun/explosivetrucksfree/ActivityPlay$UnpackTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_ec
    :try_start_ec
    sget-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->Dialog:Landroid/app/ProgressDialog;

    const-string v3, "Loading.\nPlease wait ..."

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->Dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_f8
    .catch Ljava/lang/Throwable; {:try_start_ec .. :try_end_f8} :catch_1f0

    :goto_f8
    sget-boolean v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->freemium_has_advertisement:Z

    if-eqz v0, :cond_13e

    :try_start_fc
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    const-string v0, ""

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_1da

    const-string v0, "a1503a1490e48b0"

    :goto_11d
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v4, 0x1e0

    if-gt v3, v4, :cond_1de

    new-instance v3, Lcom/google/ads/AdView;

    sget-object v4, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    invoke-direct {v3, p0, v4, v0}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    sput-object v3, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->adView:Lcom/google/ads/AdView;

    :goto_12c
    sget-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v0, p0}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->bAutoAd:Z

    sget-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->adView:Lcom/google/ads/AdView;

    new-instance v3, Lcom/google/ads/AdRequest;

    invoke-direct {v3}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V
    :try_end_13e
    .catch Ljava/lang/Throwable; {:try_start_fc .. :try_end_13e} :catch_1e9

    :cond_13e
    :goto_13e
    :try_start_13e
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->pathToDatas:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "DATAS"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->pathToDatas:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->AndroidSetPath(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1ec

    move v0, v1

    :goto_18f
    iput-boolean v0, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->bHasAccel:Z

    iget-boolean v0, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->bHasAccel:Z

    if-nez v0, :cond_198

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->bHasAccel:Z
    :try_end_198
    .catch Ljava/lang/Throwable; {:try_start_13e .. :try_end_198} :catch_1ee

    :cond_198
    :goto_198
    invoke-virtual {p0}, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->ot:I

    iget v0, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->ot:I

    iget v0, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->ot:I

    sput v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->USE_SENSOR_GETORIENTATION:I

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->rot:I

    return-void

    :catch_1bd
    move-exception v0

    const-string v0, "1.0"

    goto/16 :goto_42

    :cond_1c2
    sget-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->layout:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->mGLView:Lcom/gamayun/explosivetrucksfree/ActivityPlay$MyGLSurfaceView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->bWaitOnCreate:Ljava/lang/Boolean;

    goto/16 :goto_ec

    :cond_1da
    :try_start_1da
    const-string v0, "a1503a1490e48b0"

    goto/16 :goto_11d

    :cond_1de
    new-instance v3, Lcom/google/ads/AdView;

    sget-object v4, Lcom/google/ads/AdSize;->SMART_BANNER:Lcom/google/ads/AdSize;

    invoke-direct {v3, p0, v4, v0}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    sput-object v3, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->adView:Lcom/google/ads/AdView;
    :try_end_1e7
    .catch Ljava/lang/Throwable; {:try_start_1da .. :try_end_1e7} :catch_1e9

    goto/16 :goto_12c

    :catch_1e9
    move-exception v0

    goto/16 :goto_13e

    :cond_1ec
    move v0, v2

    goto :goto_18f

    :catch_1ee
    move-exception v0

    goto :goto_198

    :catch_1f0
    move-exception v0

    goto/16 :goto_f8

    :catch_1f3
    move-exception v4

    goto/16 :goto_42
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {p0}, Lcom/gamegod/touydig;->destroy(Landroid/content/Context;)V

    return-void
.end method

.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .registers 2

    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .registers 6

    const/4 v2, 0x1

    const-string v0, "DGbuggAD"

    const-string v1, "onFailedToReceiveAd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->bBackFromAD:Ljava/lang/Boolean;

    const v0, -0x30d40

    sput v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->ValTriggerAD:I

    sput-boolean v2, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->bAutoAd:Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x52

    if-ne p1, v0, :cond_9

    const/16 v0, 0x13

    :try_start_6
    invoke-virtual {p0, v0}, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->AndroidGameKeyDown(I)V

    :cond_9
    const/4 v0, 0x4

    if-ne p1, v0, :cond_10

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->moveTaskToBack(Z)Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_10} :catch_15

    :cond_10
    :goto_10
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :catch_15
    move-exception v0

    goto :goto_10
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x52

    if-ne p1, v0, :cond_9

    const/16 v0, 0x13

    :try_start_6
    invoke-virtual {p0, v0}, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->AndroidGameKeyUp(I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_e

    :cond_9
    :goto_9
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :catch_e
    move-exception v0

    goto :goto_9
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .registers 2

    return-void
.end method

.method protected onPause()V
    .registers 4

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    :try_start_3
    sget-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->mGLView:Lcom/gamayun/explosivetrucksfree/ActivityPlay$MyGLSurfaceView;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->mGLView:Lcom/gamayun/explosivetrucksfree/ActivityPlay$MyGLSurfaceView;

    invoke-virtual {v0}, Lcom/gamayun/explosivetrucksfree/ActivityPlay$MyGLSurfaceView;->onPause()V

    :cond_c
    iget-object v0, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->bHasAccel:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_20
    invoke-static {}, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->pauseGame()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_23} :catch_24

    :goto_23
    return-void

    :catch_24
    move-exception v0

    goto :goto_23
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .registers 2

    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->bBackFromAD:Ljava/lang/Boolean;

    const v0, -0x186a0

    sput v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->ValTriggerAD:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->bAutoAd:Z

    return-void
.end method

.method protected onResume()V
    .registers 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :try_start_3
    sget-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->mGLView:Lcom/gamayun/explosivetrucksfree/ActivityPlay$MyGLSurfaceView;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->mGLView:Lcom/gamayun/explosivetrucksfree/ActivityPlay$MyGLSurfaceView;

    invoke-virtual {v0}, Lcom/gamayun/explosivetrucksfree/ActivityPlay$MyGLSurfaceView;->onResume()V

    :cond_c
    iget-object v0, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->bHasAccel:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->bHasAccel:Z

    :cond_24
    invoke-static {}, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->resumeGame()V

    sget-boolean v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->freemium_has_advertisement:Z

    if-eqz v0, :cond_35

    sget-object v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->adView:Lcom/google/ads/AdView;

    new-instance v1, Lcom/google/ads/AdRequest;

    invoke-direct {v1}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_35} :catch_36

    :cond_35
    :goto_35
    return-void

    :catch_36
    move-exception v0

    goto :goto_35
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const v2, 0x411cf5c3    # 9.81f

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v3, :cond_5c

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1b

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aput v2, v0, v6

    :cond_1b
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_27

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aput v2, v0, v3

    :cond_27
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    cmpl-float v0, v0, v2

    if-lez v0, :cond_33

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aput v2, v0, v5

    :cond_33
    iget v0, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->rot:I

    if-ne v0, v3, :cond_6a

    sget v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->USE_SENSOR_GETORIENTATION:I

    if-ne v0, v5, :cond_6a

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    cmpl-float v0, v0, v4

    if-nez v0, :cond_5d

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    sub-float/2addr v0, v2

    div-float/2addr v0, v2

    :goto_49
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    cmpl-float v1, v1, v4

    if-nez v1, :cond_63

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    sub-float v1, v2, v1

    div-float/2addr v1, v2

    :goto_58
    neg-float v1, v1

    invoke-virtual {p0, v4, v1, v0}, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->AndroidAccelerometer(FFF)V

    :cond_5c
    :goto_5c
    return-void

    :cond_5d
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    div-float/2addr v0, v2

    goto :goto_49

    :cond_63
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    neg-float v1, v1

    div-float/2addr v1, v2

    goto :goto_58

    :cond_6a
    iget v0, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->rot:I

    if-nez v0, :cond_a0

    sget v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->USE_SENSOR_GETORIENTATION:I

    if-ne v0, v5, :cond_a0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    cmpl-float v0, v0, v4

    if-nez v0, :cond_93

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    sub-float v0, v2, v0

    div-float/2addr v0, v2

    :goto_81
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    cmpl-float v1, v1, v4

    if-nez v1, :cond_9a

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    sub-float/2addr v1, v2

    div-float/2addr v1, v2

    :goto_8f
    invoke-virtual {p0, v4, v1, v0}, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->AndroidAccelerometer(FFF)V

    goto :goto_5c

    :cond_93
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    neg-float v0, v0

    div-float/2addr v0, v2

    goto :goto_81

    :cond_9a
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    div-float/2addr v1, v2

    goto :goto_8f

    :cond_a0
    iget v0, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->rot:I

    if-nez v0, :cond_d6

    sget v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->USE_SENSOR_GETORIENTATION:I

    if-ne v0, v3, :cond_d6

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    cmpl-float v0, v0, v4

    if-nez v0, :cond_c9

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    sub-float v0, v2, v0

    div-float/2addr v0, v2

    :goto_b7
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    cmpl-float v1, v1, v4

    if-nez v1, :cond_d0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    sub-float/2addr v1, v2

    div-float/2addr v1, v2

    :goto_c5
    invoke-virtual {p0, v4, v1, v0}, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->AndroidAccelerometer(FFF)V

    goto :goto_5c

    :cond_c9
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    neg-float v0, v0

    div-float/2addr v0, v2

    goto :goto_b7

    :cond_d0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    div-float/2addr v1, v2

    goto :goto_c5

    :cond_d6
    iget v0, p0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->rot:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5c

    sget v0, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->USE_SENSOR_GETORIENTATION:I

    if-ne v0, v3, :cond_5c

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    cmpl-float v0, v0, v4

    if-nez v0, :cond_102

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    sub-float/2addr v0, v2

    div-float/2addr v0, v2

    :goto_ed
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    cmpl-float v1, v1, v4

    if-nez v1, :cond_108

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    sub-float v1, v2, v1

    div-float/2addr v1, v2

    :goto_fc
    neg-float v0, v0

    invoke-virtual {p0, v4, v1, v0}, Lcom/gamayun/explosivetrucksfree/ActivityPlay;->AndroidAccelerometer(FFF)V

    goto/16 :goto_5c

    :cond_102
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    div-float/2addr v0, v2

    goto :goto_ed

    :cond_108
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    neg-float v1, v1

    div-float/2addr v1, v2

    goto :goto_fc
.end method

.method protected onStart()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
