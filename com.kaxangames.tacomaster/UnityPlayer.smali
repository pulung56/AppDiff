.class public Lcom/unity3d/player/UnityPlayer;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/unity3d/player/a$a;


# static fields
.field public static currentActivity:Landroid/app/Activity;

.field private static v:Z


# instance fields
.field private A:I

.field private final B:Lcom/unity3d/player/w;

.field private C:Ljava/lang/String;

.field private D:Landroid/net/NetworkInfo;

.field private E:Landroid/os/Bundle;

.field private F:Ljava/util/List;

.field private G:Lcom/unity3d/player/ae;

.field private H:Landroid/widget/ProgressBar;

.field private I:Ljava/lang/Runnable;

.field private J:Ljava/lang/Runnable;

.field private K:F

.field private L:F

.field private M:Landroid/content/BroadcastReceiver;

.field private N:Z

.field private O:I

.field private P:Z

.field a:Lcom/unity3d/player/x;

.field private b:Z

.field private c:Z

.field private d:Z

.field private final e:Lcom/unity3d/player/o;

.field private final f:Lcom/unity3d/player/y;

.field private g:Z

.field private h:Lcom/unity3d/player/ad;

.field private i:Landroid/os/Bundle;

.field private j:Landroid/content/SharedPreferences;

.field private k:Landroid/content/ContextWrapper;

.field private l:Z

.field private m:Lcom/unity3d/player/UnityGL;

.field private n:Lcom/unity3d/player/v;

.field private o:Landroid/os/PowerManager$WakeLock;

.field private p:Landroid/os/PowerManager$WakeLock;

.field private q:Landroid/os/PowerManager$WakeLock;

.field private r:Landroid/hardware/SensorManager;

.field private s:Landroid/view/WindowManager;

.field private t:Lorg/fmod/FMODAudioDevice;

.field private u:Landroid/os/Vibrator;

.field private w:Z

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v0, Lcom/unity3d/player/ab;

    invoke-direct {v0}, Lcom/unity3d/player/ab;-><init>()V

    invoke-virtual {v0}, Lcom/unity3d/player/ab;->a()Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/player/UnityPlayer;->v:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v4, p0, Lcom/unity3d/player/UnityPlayer;->b:Z

    iput-boolean v4, p0, Lcom/unity3d/player/UnityPlayer;->c:Z

    iput-boolean v4, p0, Lcom/unity3d/player/UnityPlayer;->d:Z

    iput-boolean v4, p0, Lcom/unity3d/player/UnityPlayer;->g:Z

    new-instance v1, Lcom/unity3d/player/ad;

    invoke-direct {v1}, Lcom/unity3d/player/ad;-><init>()V

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->j:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->u:Landroid/os/Vibrator;

    iput-boolean v5, p0, Lcom/unity3d/player/UnityPlayer;->w:Z

    iput v4, p0, Lcom/unity3d/player/UnityPlayer;->z:I

    iput v4, p0, Lcom/unity3d/player/UnityPlayer;->A:I

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->C:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->D:Landroid/net/NetworkInfo;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->E:Landroid/os/Bundle;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->F:Ljava/util/List;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/x;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->H:Landroid/widget/ProgressBar;

    new-instance v1, Lcom/unity3d/player/UnityPlayer$3;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer$3;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->I:Ljava/lang/Runnable;

    new-instance v1, Lcom/unity3d/player/UnityPlayer$4;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer$4;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->J:Ljava/lang/Runnable;

    iput v2, p0, Lcom/unity3d/player/UnityPlayer;->K:F

    iput v2, p0, Lcom/unity3d/player/UnityPlayer;->L:F

    new-instance v1, Lcom/unity3d/player/UnityPlayer$19;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer$19;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->M:Landroid/content/BroadcastReceiver;

    iput-boolean v4, p0, Lcom/unity3d/player/UnityPlayer;->N:Z

    iput v5, p0, Lcom/unity3d/player/UnityPlayer;->O:I

    iput-boolean v5, p0, Lcom/unity3d/player/UnityPlayer;->P:Z

    new-instance v1, Lcom/unity3d/player/y;

    invoke-direct {v1, p0}, Lcom/unity3d/player/y;-><init>(Landroid/widget/FrameLayout;)V

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/y;

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    :try_start_60
    const-string v1, "android.app.NativeActivity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/unity3d/player/UnityPlayer;->l:Z
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_72} :catch_d7

    :goto_72
    iget-boolean v1, p0, Lcom/unity3d/player/UnityPlayer;->l:Z

    if-eqz v1, :cond_7b

    new-instance v0, Lcom/unity3d/player/t;

    invoke-direct {v0, p1}, Lcom/unity3d/player/t;-><init>(Landroid/content/ContextWrapper;)V

    :cond_7b
    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->e:Lcom/unity3d/player/o;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_af

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    sput-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/os/Bundle;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "com.unity3d.player.UnityPlayerActivity"

    aput-object v2, v0, v4

    const-string v2, "com.unity3d.player.UnityPlayerNativeActivity"

    aput-object v2, v0, v5

    const/4 v2, 0x2

    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p1, v0}, Lcom/unity3d/player/UnityPlayerProxyActivity;->copyPlayerPrefs(Landroid/content/Context;[Ljava/lang/String;)V

    :cond_af
    invoke-virtual {p1, v1, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->j:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->a()V

    invoke-static {}, Lcom/unity3d/player/UnityPlayer;->k()V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->nativeFile(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->m()V

    new-instance v0, Lcom/unity3d/player/w;

    invoke-direct {v0, p1, p0}, Lcom/unity3d/player/w;-><init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/w;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_d6

    iput-boolean v5, p0, Lcom/unity3d/player/UnityPlayer;->g:Z

    :cond_d6
    return-void

    :catch_d7
    move-exception v1

    goto :goto_72
.end method

.method public static native UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static a(Landroid/view/MotionEvent;)I
    .registers 2

    sget-boolean v0, Lcom/unity3d/player/u;->f:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/unity3d/player/u;->m:Lcom/unity3d/player/m;

    invoke-interface {v0, p0}, Lcom/unity3d/player/m;->a(Landroid/view/MotionEvent;)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .registers 2

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->H:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/ae;)Lcom/unity3d/player/ae;
    .registers 2

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->G:Lcom/unity3d/player/ae;

    return-object p1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_2
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/32 v7, 0x10016

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/io/FileInputStream;->skip(J)J

    const/16 v2, 0x400

    new-array v5, v2, [B

    move v2, v0

    :goto_26
    const/4 v6, -0x1

    if-eq v2, v6, :cond_32

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v2}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    goto :goto_26

    :cond_32
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_35} :catch_3a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_35} :catch_3d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_35} :catch_40

    move-result-object v2

    :goto_36
    if-nez v2, :cond_43

    move-object v0, v1

    :goto_39
    return-object v0

    :catch_3a
    move-exception v2

    move-object v2, v1

    goto :goto_36

    :catch_3d
    move-exception v2

    move-object v2, v1

    goto :goto_36

    :catch_40
    move-exception v2

    move-object v2, v1

    goto :goto_36

    :cond_43
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_48
    array-length v3, v2

    if-ge v0, v3, :cond_62

    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    :cond_62
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39
.end method

.method private a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .registers 6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/Android/data/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_50

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_55

    :cond_50
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_54
    return-object v0

    :cond_55
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_54
.end method

.method private a()V
    .registers 10

    const/4 v7, 0x1

    const/4 v2, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "bin/Data/settings.xml"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    const/4 v1, 0x0

    invoke-interface {v4, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move-object v1, v2

    move-object v3, v2

    :goto_24
    if-eq v0, v7, :cond_9e

    const/4 v5, 0x2

    if-ne v0, v5, :cond_50

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    move v8, v0

    move-object v0, v1

    move v1, v8

    :goto_31
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-ge v1, v5, :cond_4a

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_4a
    move-object v1, v0

    :cond_4b
    :goto_4b
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_24

    :cond_50
    const/4 v5, 0x3

    if-ne v0, v5, :cond_55

    move-object v3, v2

    goto :goto_4b

    :cond_55
    const/4 v5, 0x4

    if-ne v0, v5, :cond_4b

    if-eqz v1, :cond_4b

    const-string v0, "integer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->E:Landroid/os/Bundle;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_6f
    :goto_6f
    move-object v1, v2

    goto :goto_4b

    :cond_71
    const-string v0, "string"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->E:Landroid/os/Bundle;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_82} :catch_83

    goto :goto_6f

    :catch_83
    move-exception v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to locate player settings. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->b()V

    :cond_9e
    return-void

    :cond_9f
    :try_start_9f
    const-string v0, "bool"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b5

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->E:Landroid/os/Bundle;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_6f

    :cond_b5
    const-string v0, "float"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->E:Landroid/os/Bundle;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_ca} :catch_83

    goto :goto_6f
.end method

.method private a(IZ)V
    .registers 14

    const/16 v2, 0x1a

    const/4 v4, 0x0

    const/4 v10, 0x1

    const-string v0, "power"

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "Unity-ProjectRequestedWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->o:Landroid/os/PowerManager$WakeLock;

    const-string v1, "Unity-VideoPlayerWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->p:Landroid/os/PowerManager$WakeLock;

    const-string v1, "Unity-StartupWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->q:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v10}, Lcom/unity3d/player/UnityPlayer;->a(Z)V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->c()V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->initJni()V

    new-instance v0, Lcom/unity3d/player/PlayerPrefs;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->j:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1}, Lcom/unity3d/player/PlayerPrefs;-><init>(Landroid/content/SharedPreferences;)V

    const-class v0, Lcom/unity3d/player/WWW;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->nativeInitWWW(Ljava/lang/Class;)V

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "blaze"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_63

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kindle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    new-instance v0, Lcom/unity3d/player/v;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-direct {v0, v1}, Lcom/unity3d/player/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/v;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/y;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/v;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/y;->a(Landroid/view/View;)V

    :cond_63
    sget-boolean v0, Lcom/unity3d/player/u;->d:Z

    if-eqz v0, :cond_6c

    sget-object v0, Lcom/unity3d/player/u;->k:Lcom/unity3d/player/l;

    invoke-interface {v0, p0}, Lcom/unity3d/player/l;->a(Landroid/view/View;)V

    :cond_6c
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    if-nez v0, :cond_c2

    new-instance v0, Lcom/unity3d/player/UnityPlayer$24;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    sget-boolean v5, Lcom/unity3d/player/r;->a:Z

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->E:Landroid/os/Bundle;

    const-string v3, "32bit_display"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->E:Landroid/os/Bundle;

    const-string v3, "24bit_depth"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_103

    const/16 v7, 0x18

    :goto_a2
    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->E:Landroid/os/Bundle;

    const-string v3, "default_aa"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lcom/unity3d/player/UnityPlayer$24;-><init>(Lcom/unity3d/player/UnityPlayer;Landroid/content/Context;IZZZIILandroid/view/View;)V

    sget-boolean v1, Lcom/unity3d/player/u;->d:Z

    if-eqz v1, :cond_ba

    sget-object v1, Lcom/unity3d/player/u;->k:Lcom/unity3d/player/l;

    invoke-interface {v1, v0, v10}, Lcom/unity3d/player/l;->a(Landroid/opengl/GLSurfaceView;Z)V

    :cond_ba
    invoke-virtual {v0, v10}, Lcom/unity3d/player/ac;->setFocusable(Z)V

    invoke-virtual {v0, v10}, Lcom/unity3d/player/ac;->setFocusableInTouchMode(Z)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    :cond_c2
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    invoke-interface {v0, p0}, Lcom/unity3d/player/UnityGL;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->c()V

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getSettings()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "splash_mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    new-instance v2, Lcom/unity3d/player/UnityPlayer$25;

    invoke-direct {v2, p0, p1, v0}, Lcom/unity3d/player/UnityPlayer$25;-><init>(Lcom/unity3d/player/UnityPlayer;II)V

    invoke-interface {v1, v2}, Lcom/unity3d/player/UnityGL;->queueEvent(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->nativeSetExtras(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->e:Lcom/unity3d/player/o;

    if-eqz v0, :cond_fc

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->e:Lcom/unity3d/player/o;

    invoke-interface {v0}, Lcom/unity3d/player/o;->a()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_fc

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/unity3d/player/UnityPlayer;->nativeEnableTouchpad(FF)V

    :cond_fc
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    invoke-virtual {p0, v10}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    return-void

    :cond_103
    const/16 v7, 0x10

    goto :goto_a2
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->b()V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;FF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->nativeSetMousePosition(FF)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;FFF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayer;->nativeSetMouseDelta(FFF)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;IFFI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/player/UnityPlayer;->nativeQueueGUIEvent(IFFI)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;IFFIJI)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/unity3d/player/UnityPlayer;->nativeTouch(IFFIJI)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->nativeInit(II)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;IIF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayer;->nativeSetJoystickPosition(IIF)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;IIZII)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/unity3d/player/UnityPlayer;->nativeKeyState(IIZII)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;I[BII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/player/UnityPlayer;->nativeVideoFrameCallback(I[BII)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeKeysPressed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeFocusChanged(Z)V

    return-void
.end method

.method static a(Ljava/lang/Runnable;)V
    .registers 2

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/os/PowerManager$WakeLock;Z)V
    .registers 10

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-ne p2, v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    if-eqz p2, :cond_35

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x5

    const-string v1, "Unable to acquire %s wake-lock. Make sure \'android.permission.WAKE_LOCK\' has been set in the manifest."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_25} :catch_26

    goto :goto_9

    :catch_26
    move-exception v0

    const-string v0, "Unable to acquire/release %s wake-lock. Make sure \'android.permission.WAKE_LOCK\' has been set in the manifest."

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    goto :goto_9

    :cond_35
    if-nez p2, :cond_9

    :try_start_37
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_26

    goto :goto_9
.end method

.method private a(Z)V
    .registers 4

    const-string v0, "android.permission.WAKE_LOCK"

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "startup"

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->q:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/String;Landroid/os/PowerManager$WakeLock;Z)V

    :cond_f
    return-void
.end method

.method private static a(II)Z
    .registers 3

    and-int v0, p0, p1

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private a(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method private a(Landroid/view/MotionEvent;I)Z
    .registers 13

    const/4 v9, 0x1

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->l:Z

    if-eqz v0, :cond_7

    move v0, v9

    :goto_6
    return v0

    :cond_7
    if-eqz p2, :cond_b

    const/4 v0, 0x0

    goto :goto_6

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    shr-int/lit8 v1, v1, 0x8

    if-ne p2, v1, :cond_40

    and-int/lit16 v2, v0, 0xff

    :goto_17
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v6, p0, Lcom/unity3d/player/UnityPlayer;->K:F

    iget v7, p0, Lcom/unity3d/player/UnityPlayer;->L:F

    sget-boolean v0, Lcom/unity3d/player/u;->e:Z

    if-eqz v0, :cond_42

    sget-object v0, Lcom/unity3d/player/u;->l:Lcom/unity3d/player/k;

    invoke-interface {v0, p1, p2}, Lcom/unity3d/player/k;->a(Landroid/view/MotionEvent;I)F

    move-result v8

    :goto_2d
    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->a(Landroid/view/MotionEvent;)I

    move-result v3

    new-instance v0, Lcom/unity3d/player/UnityPlayer$9;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/unity3d/player/UnityPlayer$9;-><init>(Lcom/unity3d/player/UnityPlayer;IIFFFFF)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    iput v4, p0, Lcom/unity3d/player/UnityPlayer;->K:F

    iput v5, p0, Lcom/unity3d/player/UnityPlayer;->L:F

    move v0, v9

    goto :goto_6

    :cond_40
    const/4 v2, 0x2

    goto :goto_17

    :cond_42
    const/4 v8, 0x0

    goto :goto_2d
.end method

.method private a(Landroid/view/MotionEvent;II)Z
    .registers 15

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    const/4 v0, 0x0

    move v9, v0

    :goto_a
    if-ge v9, v10, :cond_23

    const/4 v2, 0x2

    invoke-virtual {p1, p3, v9}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v4

    invoke-virtual {p1, p3, v9}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v5

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v6

    move-object v0, p0

    move v1, p3

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/unity3d/player/UnityPlayer;->dispatchTouchEvent(IIIFFJI)Z

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_a

    :cond_23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    move-object v0, p0

    move v1, p3

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/unity3d/player/UnityPlayer;->dispatchTouchEvent(IIIFFJI)Z

    const/4 v0, 0x1

    return v0
.end method

.method private static a(Landroid/content/Context;)[Ljava/lang/String;
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_15} :catch_cf

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/Android/obb/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_c5

    if-lez v2, :cond_88

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "main."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".obb"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_88

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_88
    if-lez v2, :cond_c5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "patch."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".obb"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_c5

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_c5
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_ce
    return-object v0

    :catch_cf
    move-exception v0

    new-array v0, v4, [Ljava/lang/String;

    goto :goto_ce
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_17
    return-void
.end method

.method static synthetic b(Lcom/unity3d/player/UnityPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->g()V

    return-void
.end method

.method static synthetic b(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeSetInputString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/unity3d/player/UnityPlayer;Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeSetMouseButton(IZ)V

    return-void
.end method

.method private b(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_d
    return-void

    :cond_e
    const/4 v0, 0x5

    const-string v1, "Not running Unity from an Activity; ignored..."

    invoke-static {v0, v1}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    goto :goto_d
.end method

.method private b(Z)V
    .registers 4

    const-string v0, "video"

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->p:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/String;Landroid/os/PowerManager$WakeLock;Z)V

    return-void
.end method

.method private b(ILandroid/view/KeyEvent;)Z
    .registers 11

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->h()Z

    move-result v0

    if-nez v0, :cond_11

    if-ne p1, v1, :cond_10

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->kill()V

    :cond_10
    :goto_10
    return v7

    :cond_11
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_19

    move v7, v4

    goto :goto_10

    :cond_19
    const/16 v0, 0x19

    if-eq p1, v0, :cond_21

    const/16 v0, 0x18

    if-ne p1, v0, :cond_26

    :cond_21
    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->a(ILandroid/view/KeyEvent;)Z

    move-result v7

    goto :goto_10

    :cond_26
    if-ne p1, v1, :cond_53

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_53

    const/16 p1, 0x65

    move v2, p1

    :goto_32
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_41

    move v4, v7

    :cond_41
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    new-instance v0, Lcom/unity3d/player/UnityPlayer$7;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/player/UnityPlayer$7;-><init>(Lcom/unity3d/player/UnityPlayer;IIZII)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_10

    :cond_53
    move v2, p1

    goto :goto_32
.end method

.method private b(Landroid/view/MotionEvent;I)Z
    .registers 6

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/unity3d/player/UnityPlayer;->l:Z

    if-eqz v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    if-eqz p2, :cond_a

    const/4 v0, 0x0

    goto :goto_5

    :cond_a
    sget-boolean v1, Lcom/unity3d/player/u;->e:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/unity3d/player/u;->l:Lcom/unity3d/player/k;

    invoke-interface {v1, p1}, Lcom/unity3d/player/k;->a(Landroid/view/MotionEvent;)[Lcom/unity3d/player/k$a;

    move-result-object v1

    new-instance v2, Lcom/unity3d/player/UnityPlayer$10;

    invoke-direct {v2, p0, v1}, Lcom/unity3d/player/UnityPlayer$10;-><init>(Lcom/unity3d/player/UnityPlayer;[Lcom/unity3d/player/k$a;)V

    invoke-virtual {p0, v2}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_5
.end method

.method private b(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v0, p1}, Landroid/content/ContextWrapper;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private c()V
    .registers 3

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->l:Z

    if-eqz v0, :cond_14

    new-instance v1, Lcom/unity3d/player/s;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/unity3d/player/s;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/unity3d/player/s;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->nativeForwardEventsToDalvik(Z)V

    :cond_14
    return-void
.end method

.method static synthetic c(Lcom/unity3d/player/UnityPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->f()V

    return-void
.end method

.method private c(Z)V
    .registers 9

    const/16 v6, 0xb

    const/16 v5, 0xa

    const/16 v4, 0x9

    const/4 v3, 0x4

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->N:Z

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    if-eqz p1, :cond_4b

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/w;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Lcom/unity3d/player/UnityPlayer;->O:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/w;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Lcom/unity3d/player/UnityPlayer;->O:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/w;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Lcom/unity3d/player/UnityPlayer;->O:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/w;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Lcom/unity3d/player/UnityPlayer;->O:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_b

    :cond_4b
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/w;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/w;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/w;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/w;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_b
.end method

.method static synthetic c(Lcom/unity3d/player/UnityPlayer;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/unity3d/player/UnityPlayer;->d:Z

    return p1
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/player/a;

    invoke-virtual {v0}, Lcom/unity3d/player/a;->c()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method static synthetic d(Lcom/unity3d/player/UnityPlayer;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->b(Z)V

    return-void
.end method

.method private d(Z)V
    .registers 6

    const/4 v3, 0x2

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->P:Z

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/w;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_5

    :cond_17
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/w;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_5
.end method

.method static synthetic d(Lcom/unity3d/player/UnityPlayer;)Z
    .registers 2

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativePause()Z

    move-result v0

    return v0
.end method

.method private e()V
    .registers 6

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/player/a;

    :try_start_12
    invoke-virtual {v0, p0}, Lcom/unity3d/player/a;->a(Lcom/unity3d/player/a$a;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    :catch_16
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to initialize camera: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/unity3d/player/a;->c()V

    goto :goto_6

    :cond_32
    return-void
.end method

.method static synthetic e(Lcom/unity3d/player/UnityPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeResume()V

    return-void
.end method

.method static synthetic f(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/y;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/y;

    return-object v0
.end method

.method private f()V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/v;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/v;

    iget v1, p0, Lcom/unity3d/player/UnityPlayer;->x:I

    iget v2, p0, Lcom/unity3d/player/UnityPlayer;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/v;->a(II)V

    :cond_d
    return-void
.end method

.method static synthetic g(Lcom/unity3d/player/UnityPlayer;)I
    .registers 2

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeActivityIndicatorStyle()I

    move-result v0

    return v0
.end method

.method private g()V
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Lorg/fmod/FMODAudioDevice;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Lorg/fmod/FMODAudioDevice;

    invoke-virtual {v0}, Lorg/fmod/FMODAudioDevice;->close()V

    :cond_9
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeDone()V

    return-void
.end method

.method static synthetic h(Lcom/unity3d/player/UnityPlayer;)Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->H:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private h()V
    .registers 7

    const/4 v5, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->f()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->G:Lcom/unity3d/player/ae;

    if-eqz v0, :cond_18

    invoke-direct {p0, v1}, Lcom/unity3d/player/UnityPlayer;->b(Z)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->G:Lcom/unity3d/player/ae;

    invoke-virtual {v0}, Lcom/unity3d/player/ae;->onResume()V

    goto :goto_a

    :cond_18
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/ad;->c(Z)V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->e()V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    invoke-interface {v0}, Lcom/unity3d/player/UnityGL;->onResume()V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->M:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/w;

    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    invoke-direct {p0, v1}, Lcom/unity3d/player/UnityPlayer;->c(Z)V

    invoke-direct {p0, v1}, Lcom/unity3d/player/UnityPlayer;->d(Z)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/w;

    invoke-virtual {v0}, Lcom/unity3d/player/w;->e()V

    iput-object v5, p0, Lcom/unity3d/player/UnityPlayer;->C:Ljava/lang/String;

    iput-object v5, p0, Lcom/unity3d/player/UnityPlayer;->D:Landroid/net/NetworkInfo;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->h()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->m()V

    :cond_5a
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_ab

    move v0, v1

    :goto_66
    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    instance-of v0, v0, Lcom/unity3d/player/ac;

    if-eqz v0, :cond_77

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/y;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/unity3d/player/y;->d(Landroid/view/View;)V

    :cond_77
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->h()Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    new-instance v1, Lcom/unity3d/player/UnityPlayer$28;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer$28;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-interface {v0, v1}, Lcom/unity3d/player/UnityGL;->queueEvent(Ljava/lang/Runnable;)V

    :cond_89
    sget-boolean v0, Lcom/unity3d/player/UnityPlayer;->v:Z

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Lorg/fmod/FMODAudioDevice;

    if-nez v0, :cond_98

    new-instance v0, Lorg/fmod/FMODAudioDevice;

    invoke-direct {v0}, Lorg/fmod/FMODAudioDevice;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Lorg/fmod/FMODAudioDevice;

    :cond_98
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Lorg/fmod/FMODAudioDevice;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Lorg/fmod/FMODAudioDevice;

    invoke-virtual {v0}, Lorg/fmod/FMODAudioDevice;->isRunning()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Lorg/fmod/FMODAudioDevice;

    invoke-virtual {v0}, Lorg/fmod/FMODAudioDevice;->start()V

    goto/16 :goto_a

    :cond_ab
    const/4 v0, 0x0

    goto :goto_66
.end method

.method static synthetic i(Lcom/unity3d/player/UnityPlayer;)Landroid/content/ContextWrapper;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    return-object v0
.end method

.method private i()V
    .registers 5

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getSettings()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "hide_status_bar"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    :cond_2b
    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->nativeSetTouchDeltaY(F)V

    :cond_2e
    return-void
.end method

.method private final native initJni()V
.end method

.method static synthetic j(Lcom/unity3d/player/UnityPlayer;)I
    .registers 2

    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->y:I

    return v0
.end method

.method private j()V
    .registers 5

    const-string v0, "assets/bin/"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/unity3d/player/UnityPlayer;->unityAndroidInit(Ljava/lang/String;Ljava/lang/String;)Z

    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->x:I

    iget v1, p0, Lcom/unity3d/player/UnityPlayer;->y:I

    iget v2, p0, Lcom/unity3d/player/UnityPlayer;->x:I

    iget v3, p0, Lcom/unity3d/player/UnityPlayer;->y:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->nativeResize(IIII)V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->unityAndroidPrepareGameLoop()V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->d()V

    return-void
.end method

.method private static k()V
    .registers 4

    const-string v0, "mono"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :try_start_5
    const-string v0, "unity"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/player/ad;->a()V
    :try_end_d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to load libraries: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    goto :goto_d
.end method

.method static synthetic k(Lcom/unity3d/player/UnityPlayer;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->c:Z

    return v0
.end method

.method private l()Z
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.front"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method static synthetic l(Lcom/unity3d/player/UnityPlayer;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->d:Z

    return v0
.end method

.method private m()V
    .registers 7

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->E:Landroid/os/Bundle;

    const-string v1, "useObb"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v2, :cond_a

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/unity3d/player/UnityPlayer;->E:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-direct {p0, v3}, Lcom/unity3d/player/UnityPlayer;->nativeFile(Ljava/lang/String;)V

    :cond_26
    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer;->E:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method static synthetic m(Lcom/unity3d/player/UnityPlayer;)V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->nativeSetInputCanceled(Z)V

    return-void
.end method

.method static synthetic n(Lcom/unity3d/player/UnityPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeSoftInputClosed()V

    return-void
.end method

.method private final native nativeActivityIndicatorStyle()I
.end method

.method private final native nativeDone()V
.end method

.method private final native nativeEnableTouchpad(FF)V
.end method

.method private final native nativeFile(Ljava/lang/String;)V
.end method

.method private final native nativeFocusChanged(Z)V
.end method

.method private final native nativeGetGLContext()Ljava/lang/String;
.end method

.method private final native nativeGetGLScreen()Ljava/lang/String;
.end method

.method private final native nativeGetLicensePolicy()I
.end method

.method private final native nativeInit(II)V
.end method

.method private final native nativeInitWWW(Ljava/lang/Class;)V
.end method

.method private final native nativeIsAutorotationOn()Z
.end method

.method private final native nativeJoyButtonState(IIZ)V
.end method

.method private final native nativeKeyState(IIZII)V
.end method

.method private final native nativeKeysPressed(Ljava/lang/String;)V
.end method

.method private final native nativePause()Z
.end method

.method private final native nativeQueueGUIEvent(IFFI)V
.end method

.method private final native nativeRecreateGfxState()V
.end method

.method private final native nativeRender()Z
.end method

.method private final native nativeRequested32bitDisplayBuffer()Z
.end method

.method private final native nativeRequestedAA()I
.end method

.method private final native nativeResize(IIII)V
.end method

.method private final native nativeResume()V
.end method

.method private final native nativeSetExtras(Landroid/os/Bundle;)V
.end method

.method private final native nativeSetInputCanceled(Z)V
.end method

.method private final native nativeSetInputString(Ljava/lang/String;)V
.end method

.method private final native nativeSetJoystickPosition(IIF)V
.end method

.method private final native nativeSetMouseButton(IZ)V
.end method

.method private final native nativeSetMouseDelta(FFF)V
.end method

.method private final native nativeSetMousePosition(FF)V
.end method

.method private final native nativeSetTouchDeltaY(F)V
.end method

.method private final native nativeSoftInputClosed()V
.end method

.method private final native nativeTouch(IFFIJI)V
.end method

.method private final native nativeVideoFrameCallback(I[BII)V
.end method

.method static synthetic o(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/ae;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->G:Lcom/unity3d/player/ae;

    return-object v0
.end method

.method private final native unityAndroidInit(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private final native unityAndroidPrepareGameLoop()V
.end method


# virtual methods
.method protected Location_IsServiceEnabledByUser()Z
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/w;

    invoke-virtual {v0}, Lcom/unity3d/player/w;->a()Z

    move-result v0

    return v0
.end method

.method protected Location_SetDesiredAccuracy(F)V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/w;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/w;->b(F)V

    return-void
.end method

.method protected Location_SetDistanceFilter(F)V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/w;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/w;->a(F)V

    return-void
.end method

.method protected Location_StartUpdatingLocation()V
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/w;

    invoke-virtual {v0}, Lcom/unity3d/player/w;->b()V

    return-void
.end method

.method protected Location_StopUpdatingLocation()V
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/w;

    invoke-virtual {v0}, Lcom/unity3d/player/w;->c()V

    return-void
.end method

.method protected closeCamera(I)V
    .registers 5

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/player/a;

    invoke-virtual {v0}, Lcom/unity3d/player/a;->a()I

    move-result v2

    if-ne v2, p1, :cond_6

    invoke-virtual {v0}, Lcom/unity3d/player/a;->c()V

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->F:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_20
    return-void
.end method

.method public configurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    :cond_11
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->d:Z

    if-eqz v0, :cond_29

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_29
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->G:Lcom/unity3d/player/ae;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->G:Lcom/unity3d/player/ae;

    invoke-virtual {v0}, Lcom/unity3d/player/ae;->updateVideoLayout()V

    :cond_32
    return-void
.end method

.method protected dispatchTouchEvent(IIIFFJI)Z
    .registers 18

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->h()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->l:Z

    if-nez v0, :cond_27

    and-int/lit16 v5, p2, 0xff

    const v0, 0xff00

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x8

    if-ne p1, v0, :cond_29

    :goto_18
    new-instance v0, Lcom/unity3d/player/UnityPlayer$8;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move-wide v6, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/unity3d/player/UnityPlayer$8;-><init>(Lcom/unity3d/player/UnityPlayer;IFFIJI)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    :cond_27
    const/4 v0, 0x1

    goto :goto_9

    :cond_29
    const/4 v5, 0x2

    goto :goto_18
.end method

.method protected enableSensorCompensation(Z)V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/w;

    iput-boolean p1, v0, Lcom/unity3d/player/w;->a:Z

    return-void
.end method

.method protected forwardMotionEventToDalvik(JJII[I[FIFFIIIII[J[F)V
    .registers 39

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unity3d/player/UnityPlayer;->e:Lcom/unity3d/player/o;

    if-eqz v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unity3d/player/UnityPlayer;->e:Lcom/unity3d/player/o;

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    invoke-interface/range {v1 .. v19}, Lcom/unity3d/player/o;->a(JJII[I[FIFFIIIII[J[F)V

    :cond_2d
    return-void
.end method

.method protected getCacheDir()Ljava/lang/String;
    .registers 3

    const-string v0, "/cache"

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCameraOrientation(I)I
    .registers 3

    sget-boolean v0, Lcom/unity3d/player/u;->c:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/unity3d/player/u;->j:Lcom/unity3d/player/j;

    invoke-interface {v0, p1}, Lcom/unity3d/player/j;->c(I)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected getConnectedJoysticks()[I
    .registers 2

    sget-boolean v0, Lcom/unity3d/player/u;->e:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/unity3d/player/u;->l:Lcom/unity3d/player/k;

    invoke-interface {v0}, Lcom/unity3d/player/k;->a()[I

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected getDeviceOrientation()I
    .registers 9

    const/4 v7, 0x2

    const/16 v4, 0x9

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v5

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v7, :cond_2c

    move v0, v1

    :goto_1c
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_2e

    const/16 v3, 0x8

    :goto_22
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v4, :cond_30

    :goto_26
    if-nez v5, :cond_32

    if-eqz v0, :cond_2b

    move v1, v2

    :cond_2b
    :goto_2b
    return v1

    :cond_2c
    move v0, v2

    goto :goto_1c

    :cond_2e
    move v3, v2

    goto :goto_22

    :cond_30
    move v4, v1

    goto :goto_26

    :cond_32
    if-ne v5, v1, :cond_3a

    if-eqz v0, :cond_38

    move v1, v2

    goto :goto_2b

    :cond_38
    move v1, v4

    goto :goto_2b

    :cond_3a
    if-ne v5, v7, :cond_42

    if-eqz v0, :cond_40

    move v1, v3

    goto :goto_2b

    :cond_40
    move v1, v4

    goto :goto_2b

    :cond_42
    const/4 v2, 0x3

    if-ne v5, v2, :cond_2b

    if-eqz v0, :cond_2b

    move v1, v3

    goto :goto_2b
.end method

.method protected getDeviceUniqueIdentifier()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->C:Ljava/lang/String;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->C:Ljava/lang/String;

    :cond_14
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->C:Ljava/lang/String;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1f

    move-result v1

    if-eqz v1, :cond_20

    :goto_1e
    return-object v0

    :catch_1f
    move-exception v0

    :cond_20
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method

.method protected getDisplaySize()[I
    .registers 9

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    :try_start_1a
    const-class v0, Landroid/view/Display;

    const-string v2, "getRawHeight"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-class v0, Landroid/view/Display;

    const-string v2, "getRawWidth"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_49} :catch_57

    move-result v1

    move v0, v2

    :goto_4b
    if-ge v0, v1, :cond_6a

    :goto_4d
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v6

    const/4 v1, 0x1

    aput v0, v2, v1

    move-object v0, v2

    goto :goto_8

    :catch_57
    move-exception v0

    sget-boolean v0, Lcom/unity3d/player/u;->g:Z

    if-eqz v0, :cond_66

    sget-object v0, Lcom/unity3d/player/u;->n:Lcom/unity3d/player/n;

    invoke-interface {v0, v3, v1}, Lcom/unity3d/player/n;->a(Landroid/view/Display;Landroid/util/DisplayMetrics;)V

    :goto_61
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_4b

    :cond_66
    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_61

    :cond_6a
    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_4d
.end method

.method protected getFilesDir()Ljava/lang/String;
    .registers 3

    const-string v0, "/files"

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getGyroUpdateDelay()I
    .registers 2

    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->O:I

    return v0
.end method

.method protected getInternetReachability()I
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->D:Landroid/net/NetworkInfo;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->D:Landroid/net/NetworkInfo;

    :cond_15
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->D:Landroid/net/NetworkInfo;

    if-nez v0, :cond_1b

    move v0, v1

    :goto_1a
    return v0

    :cond_1b
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_23

    move v0, v1

    goto :goto_1a

    :cond_23
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_2a

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :catch_2a
    move-exception v0

    const/4 v0, 0x5

    const-string v2, "android.permission.ACCESS_NETWORK_STATE not available?"

    invoke-static {v0, v2}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    move v0, v1

    goto :goto_1a
.end method

.method protected getIsGyroAvailable()Z
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.sensor.gyroscope"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected getIsGyroEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->N:Z

    return v0
.end method

.method protected getJoystickAxes(I)[I
    .registers 3

    sget-boolean v0, Lcom/unity3d/player/u;->e:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/unity3d/player/u;->l:Lcom/unity3d/player/k;

    invoke-interface {v0, p1}, Lcom/unity3d/player/k;->b(I)[I

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected getJoystickName(I)Ljava/lang/String;
    .registers 3

    sget-boolean v0, Lcom/unity3d/player/u;->e:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/unity3d/player/u;->l:Lcom/unity3d/player/k;

    invoke-interface {v0, p1}, Lcom/unity3d/player/k;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected getNumCameras()I
    .registers 2

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->l()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    sget-boolean v0, Lcom/unity3d/player/u;->c:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/unity3d/player/u;->j:Lcom/unity3d/player/j;

    invoke-interface {v0}, Lcom/unity3d/player/j;->a()I

    move-result v0

    goto :goto_7

    :cond_13
    const/4 v0, 0x1

    goto :goto_7
.end method

.method protected getOrientation()I
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    goto :goto_7
.end method

.method protected getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getScreenDPI()F
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    goto :goto_7
.end method

.method protected getScreenOrientationAngle()I
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5a

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method protected getScreenTimeout()I
    .registers 4

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/16 v2, 0x3a98

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getSettings()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->E:Landroid/os/Bundle;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method protected hasWakeLock()Z
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->o:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method protected hideSoftInput()V
    .registers 2

    new-instance v0, Lcom/unity3d/player/UnityPlayer$14;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$14;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected hideVideoPlayer()V
    .registers 2

    new-instance v0, Lcom/unity3d/player/UnityPlayer$20;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$20;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init(IZ)V
    .registers 7

    const/4 v3, 0x0

    invoke-static {}, Lcom/unity3d/player/ad;->b()Z

    move-result v0

    if-nez v0, :cond_30

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Failure to initialize!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/unity3d/player/UnityPlayer$1;

    invoke-direct {v2, p0}, Lcom/unity3d/player/UnityPlayer$1;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Your hardware does not support this application, sorry!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_2f
    return-void

    :cond_30
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_69

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Old Android OS detected!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/unity3d/player/UnityPlayer$11;

    invoke-direct {v2, p0, p1, p2}, Lcom/unity3d/player/UnityPlayer$11;-><init>(Lcom/unity3d/player/UnityPlayer;IZ)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "This application requires at least Android OS version 2.2 on Samsung devices. Your device seems to be running an older OS version.\nPlease contact your carrier or the hardware vendor and ask them how to install a more recent version. It is a simple process that your provider\'s customer service can help you with."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_2f

    :cond_69
    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->a(IZ)V

    goto :goto_2f
.end method

.method protected initCamera(IIII)[I
    .registers 10

    new-instance v1, Lcom/unity3d/player/a;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/unity3d/player/a;-><init>(IIII)V

    :try_start_5
    invoke-virtual {v1, p0}, Lcom/unity3d/player/a;->a(Lcom/unity3d/player/a$a;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->F:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/unity3d/player/a;->b()Landroid/hardware/Camera$Size;

    move-result-object v2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v3, 0x0

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    aput v4, v0, v3

    const/4 v3, 0x1

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    aput v2, v0, v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1e} :catch_1f

    :goto_1e
    return-object v0

    :catch_1f
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to initialize camera: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/unity3d/player/a;->c()V

    const/4 v0, 0x0

    goto :goto_1e
.end method

.method protected isCameraFrontFacing(I)Z
    .registers 3

    sget-boolean v0, Lcom/unity3d/player/u;->c:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/unity3d/player/u;->j:Lcom/unity3d/player/j;

    invoke-interface {v0, p1}, Lcom/unity3d/player/j;->b(I)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected isCompassAvailable()Z
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.sensor.compass"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isCompassEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->P:Z

    return v0
.end method

.method protected isFinishing()Z
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected isSensorCompensationEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/w;

    iget-boolean v0, v0, Lcom/unity3d/player/w;->a:Z

    return v0
.end method

.method protected kill()V
    .registers 2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method protected loadLibrary(Ljava/lang/String;)Z
    .registers 7

    const/4 v4, 0x6

    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_1b

    const/4 v0, 0x1

    :goto_6
    return v0

    :catch_7
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    goto :goto_6

    :catch_1b
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    goto :goto_6
.end method

.method final native nativeAttitude(FFFFJ)V
.end method

.method final native nativeCompass(FFFFFD)V
.end method

.method final native nativeDeviceOrientation(I)V
.end method

.method final native nativeForwardEventsToDalvik(Z)V
.end method

.method final native nativeGravity(FFFJ)V
.end method

.method final native nativeGyro(FFFJ)V
.end method

.method final native nativeJoystickRemoved()V
.end method

.method final native nativeLinearAcc(FFFJ)V
.end method

.method final native nativeSensor(FFFJ)V
.end method

.method protected native nativeSetLocation(FFFFD)V
.end method

.method protected native nativeSetLocationStatus(I)V
.end method

.method public onCameraFrame(Lcom/unity3d/player/a;[B)V
    .registers 9

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p1}, Lcom/unity3d/player/a;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/unity3d/player/a;->b()Landroid/hardware/Camera$Size;

    move-result-object v4

    new-instance v0, Lcom/unity3d/player/UnityPlayer$17;

    move-object v1, p0

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/player/UnityPlayer$17;-><init>(Lcom/unity3d/player/UnityPlayer;I[BLandroid/hardware/Camera$Size;Lcom/unity3d/player/a;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeRender()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->b()V

    goto :goto_7

    :cond_12
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->h()Z

    move-result v0

    if-nez v0, :cond_4c

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->w:Z

    if-eqz v0, :cond_21

    iput-boolean v1, p0, Lcom/unity3d/player/UnityPlayer;->w:Z

    goto :goto_7

    :cond_21
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->j()V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeResume()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    instance-of v0, v0, Lcom/unity3d/player/ac;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    check-cast v0, Lcom/unity3d/player/ac;

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeRequested32bitDisplayBuffer()Z

    move-result v1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeRequestedAA()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/ac;->a(ZI)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/unity3d/player/UnityPlayer$2;

    invoke-direct {v1, p0, v0}, Lcom/unity3d/player/UnityPlayer$2;-><init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/ac;)V

    invoke-direct {p0, v1}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_4c
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->i()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->e()V

    invoke-direct {p0, v1}, Lcom/unity3d/player/UnityPlayer;->a(Z)V

    goto :goto_2b
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->h()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return v1

    :cond_a
    if-nez p1, :cond_15

    new-instance v0, Lcom/unity3d/player/UnityPlayer$5;

    invoke-direct {v0, p0, p3}, Lcom/unity3d/player/UnityPlayer$5;-><init>(Lcom/unity3d/player/UnityPlayer;Landroid/view/KeyEvent;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_9

    :cond_15
    new-instance v0, Lcom/unity3d/player/UnityPlayer$6;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/unity3d/player/UnityPlayer$6;-><init>(Lcom/unity3d/player/UnityPlayer;ILandroid/view/KeyEvent;I)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_9
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->d:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 7

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->z:I

    if-nez v0, :cond_e

    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->A:I

    if-eqz v0, :cond_2b

    :cond_e
    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->z:I

    if-ne v0, p2, :cond_16

    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->A:I

    if-eq v0, p3, :cond_2b

    :cond_16
    sget-boolean v0, Lcom/unity3d/player/u;->d:Z

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/unity3d/player/u;->k:Lcom/unity3d/player/l;

    invoke-interface {v0}, Lcom/unity3d/player/l;->a()Z

    move-result v0

    :goto_20
    iget v1, p0, Lcom/unity3d/player/UnityPlayer;->z:I

    iget v2, p0, Lcom/unity3d/player/UnityPlayer;->A:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->setScreenSize(IIZ)V

    iget p2, p0, Lcom/unity3d/player/UnityPlayer;->z:I

    iget p3, p0, Lcom/unity3d/player/UnityPlayer;->A:I

    :cond_2b
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_41
    iput p2, p0, Lcom/unity3d/player/UnityPlayer;->x:I

    iput p3, p0, Lcom/unity3d/player/UnityPlayer;->y:I

    invoke-direct {p0, p2, p3, v1, v0}, Lcom/unity3d/player/UnityPlayer;->nativeResize(IIII)V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->i()V

    return-void

    :cond_4c
    const/4 v0, 0x0

    goto :goto_20

    :cond_4e
    move v0, p3

    move v1, p2

    goto :goto_41
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 3

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeRecreateGfxState()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    const/16 v1, 0x1002

    const/4 v4, 0x0

    const/16 v5, 0x4002

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->h()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return v3

    :cond_f
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->l:Z

    if-nez v0, :cond_e

    sget-boolean v0, Lcom/unity3d/player/u;->c:Z

    if-eqz v0, :cond_5e

    sget-object v0, Lcom/unity3d/player/u;->j:Lcom/unity3d/player/j;

    invoke-interface {v0, p1}, Lcom/unity3d/player/j;->a(Landroid/view/MotionEvent;)I

    move-result v0

    :goto_1d
    invoke-static {v0, v5}, Lcom/unity3d/player/UnityPlayer;->a(II)Z

    move-result v2

    if-eqz v2, :cond_60

    sget-boolean v2, Lcom/unity3d/player/u;->f:Z

    if-eqz v2, :cond_60

    move v2, v3

    :goto_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    move v7, v4

    move v6, v4

    :goto_2e
    if-ge v7, v8, :cond_90

    if-eqz v2, :cond_95

    sget-boolean v4, Lcom/unity3d/player/u;->f:Z

    if-eqz v4, :cond_62

    sget-object v4, Lcom/unity3d/player/u;->m:Lcom/unity3d/player/m;

    invoke-interface {v4, p1, v7}, Lcom/unity3d/player/m;->a(Landroid/view/MotionEvent;I)I

    move-result v4

    :goto_3c
    const/4 v9, 0x4

    if-eq v4, v9, :cond_44

    const/4 v9, 0x2

    if-eq v4, v9, :cond_44

    if-ne v0, v5, :cond_64

    :cond_44
    move v4, v5

    :cond_45
    :goto_45
    invoke-static {v4, v1}, Lcom/unity3d/player/UnityPlayer;->a(II)Z

    move-result v9

    if-nez v9, :cond_54

    const v9, 0x100008

    invoke-static {v4, v9}, Lcom/unity3d/player/UnityPlayer;->a(II)Z

    move-result v9

    if-eqz v9, :cond_6e

    :cond_54
    invoke-direct {p0, p1, v4, v7}, Lcom/unity3d/player/UnityPlayer;->a(Landroid/view/MotionEvent;II)Z

    move-result v4

    or-int/2addr v4, v6

    :goto_59
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v4

    goto :goto_2e

    :cond_5e
    move v0, v1

    goto :goto_1d

    :cond_60
    move v2, v4

    goto :goto_28

    :cond_62
    move v4, v3

    goto :goto_3c

    :cond_64
    xor-int/lit16 v4, v0, 0x4002

    and-int/lit16 v9, v4, 0xff

    if-nez v9, :cond_45

    and-int/lit16 v9, v0, 0xff

    or-int/2addr v4, v9

    goto :goto_45

    :cond_6e
    const/16 v9, 0x2002

    invoke-static {v4, v9}, Lcom/unity3d/player/UnityPlayer;->a(II)Z

    move-result v9

    if-nez v9, :cond_7c

    invoke-static {v4, v5}, Lcom/unity3d/player/UnityPlayer;->a(II)Z

    move-result v9

    if-eqz v9, :cond_82

    :cond_7c
    invoke-direct {p0, p1, v7}, Lcom/unity3d/player/UnityPlayer;->a(Landroid/view/MotionEvent;I)Z

    move-result v4

    or-int/2addr v4, v6

    goto :goto_59

    :cond_82
    const/16 v9, 0x10

    invoke-static {v4, v9}, Lcom/unity3d/player/UnityPlayer;->a(II)Z

    move-result v4

    if-eqz v4, :cond_93

    invoke-direct {p0, p1, v7}, Lcom/unity3d/player/UnityPlayer;->b(Landroid/view/MotionEvent;I)Z

    move-result v4

    or-int/2addr v4, v6

    goto :goto_59

    :cond_90
    move v3, v6

    goto/16 :goto_e

    :cond_93
    move v4, v6

    goto :goto_59

    :cond_95
    move v4, v0

    goto :goto_45
.end method

.method protected openURL(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/net/Uri;->isRelative()Z

    move-result v1

    if-eqz v1, :cond_2c

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2c
    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public pause()V
    .registers 6

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->G:Lcom/unity3d/player/ae;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->G:Lcom/unity3d/player/ae;

    invoke-virtual {v0}, Lcom/unity3d/player/ae;->onPause()V

    invoke-direct {p0, v4}, Lcom/unity3d/player/UnityPlayer;->b(Z)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-direct {p0, v4}, Lcom/unity3d/player/UnityPlayer;->a(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/unity3d/player/UnityPlayer;->reportSoftInputStr(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->g()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0, v4}, Lcom/unity3d/player/ad;->c(Z)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/ad;->b(Z)V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->d()V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Lorg/fmod/FMODAudioDevice;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Lorg/fmod/FMODAudioDevice;

    invoke-virtual {v0}, Lorg/fmod/FMODAudioDevice;->stop()V

    :cond_34
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->h()Z

    move-result v0

    if-eqz v0, :cond_61

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_a0

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    new-instance v2, Lcom/unity3d/player/UnityPlayer$26;

    invoke-direct {v2, p0, v0}, Lcom/unity3d/player/UnityPlayer$26;-><init>(Lcom/unity3d/player/UnityPlayer;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v1, v2}, Lcom/unity3d/player/UnityGL;->queueEvent(Ljava/lang/Runnable;)V

    :goto_51
    const-wide/16 v1, 0xa

    :try_start_53
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_58
    .catch Ljava/lang/InterruptedException; {:try_start_53 .. :try_end_58} :catch_ab

    :goto_58
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    move-result v0

    if-lez v0, :cond_61

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->quit()V

    :cond_61
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->M:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->g:Z

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    instance-of v0, v0, Lcom/unity3d/player/ac;

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/v;

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/v;

    invoke-virtual {v0}, Lcom/unity3d/player/v;->a()V

    :cond_7b
    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/y;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/unity3d/player/y;->e(Landroid/view/View;)V

    :cond_84
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    invoke-interface {v0}, Lcom/unity3d/player/UnityGL;->onPause()V

    invoke-direct {p0, v4}, Lcom/unity3d/player/UnityPlayer;->c(Z)V

    invoke-direct {p0, v4}, Lcom/unity3d/player/UnityPlayer;->d(Z)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/w;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/w;

    invoke-virtual {v0}, Lcom/unity3d/player/w;->d()V

    invoke-virtual {p0, v4}, Lcom/unity3d/player/UnityPlayer;->setWakeLock(Z)V

    goto/16 :goto_e

    :cond_a0
    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    new-instance v2, Lcom/unity3d/player/UnityPlayer$27;

    invoke-direct {v2, p0, v0}, Lcom/unity3d/player/UnityPlayer$27;-><init>(Lcom/unity3d/player/UnityPlayer;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v1, v2}, Lcom/unity3d/player/UnityGL;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_51

    :catch_ab
    move-exception v1

    goto :goto_58
.end method

.method protected queueEvent(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->h()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    new-instance v1, Lcom/unity3d/player/UnityPlayer$23;

    invoke-direct {v1, p0, p1}, Lcom/unity3d/player/UnityPlayer$23;-><init>(Lcom/unity3d/player/UnityPlayer;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lcom/unity3d/player/UnityGL;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_8
.end method

.method public quit()V
    .registers 2

    invoke-static {}, Lcom/unity3d/player/ad;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->removeAllViews()V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    invoke-interface {v0}, Lcom/unity3d/player/UnityGL;->a()V

    :cond_e
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->kill()V

    return-void
.end method

.method protected reportSoftInputStr(Ljava/lang/String;IZ)V
    .registers 5

    const/4 v0, 0x1

    if-ne p2, v0, :cond_6

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->hideSoftInput()V

    :cond_6
    new-instance v0, Lcom/unity3d/player/UnityPlayer$16;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/unity3d/player/UnityPlayer$16;-><init>(Lcom/unity3d/player/UnityPlayer;ZLjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resume()V
    .registers 3

    sget-boolean v0, Lcom/unity3d/player/u;->d:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/unity3d/player/u;->k:Lcom/unity3d/player/l;

    invoke-interface {v0, p0}, Lcom/unity3d/player/l;->b(Landroid/view/View;)V

    :cond_9
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->i()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->a(Z)V

    :cond_15
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unity3d/player/ad;->b(Z)V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->h()V

    return-void
.end method

.method protected setCompassEnabled(Z)V
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/unity3d/player/UnityPlayer;->P:Z

    if-ne v2, p1, :cond_7

    :goto_6
    return-void

    :cond_7
    if-eqz p1, :cond_18

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isCompassAvailable()Z

    move-result v2

    if-eqz v2, :cond_12

    move v0, v1

    :cond_12
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->P:Z

    invoke-direct {p0, v1}, Lcom/unity3d/player/UnityPlayer;->d(Z)V

    goto :goto_6

    :cond_18
    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->d(Z)V

    iput-boolean p1, p0, Lcom/unity3d/player/UnityPlayer;->P:Z

    new-instance v0, Lcom/unity3d/player/UnityPlayer$22;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$22;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method protected setGyroEnabled(Z)V
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/unity3d/player/UnityPlayer;->N:Z

    if-ne v2, p1, :cond_7

    :goto_6
    return-void

    :cond_7
    if-eqz p1, :cond_18

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getIsGyroAvailable()Z

    move-result v2

    if-eqz v2, :cond_12

    move v0, v1

    :cond_12
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->N:Z

    invoke-direct {p0, v1}, Lcom/unity3d/player/UnityPlayer;->c(Z)V

    goto :goto_6

    :cond_18
    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->c(Z)V

    iput-boolean p1, p0, Lcom/unity3d/player/UnityPlayer;->N:Z

    new-instance v0, Lcom/unity3d/player/UnityPlayer$21;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$21;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method protected setGyroUpdateDelay(I)V
    .registers 2

    iput p1, p0, Lcom/unity3d/player/UnityPlayer;->O:I

    return-void
.end method

.method protected setHideInputField(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/unity3d/player/UnityPlayer;->c:Z

    return-void
.end method

.method protected setOrientation(I)V
    .registers 5

    const/16 v2, 0x9

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    if-eq p1, v1, :cond_8

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_1d

    if-eq p1, v2, :cond_8

    const/16 v1, 0x8

    if-eq p1, v1, :cond_8

    :cond_1d
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_8
.end method

.method protected setScreenSize(IIZ)V
    .registers 12

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    instance-of v1, v1, Landroid/view/SurfaceView;

    if-nez v1, :cond_10

    const/4 v0, 0x5

    const-string v1, "setScreenSize: Unable to retrieve surface holder"

    invoke-static {v0, v1}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    iget-object v4, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    check-cast v4, Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_27

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    if-eq v1, p2, :cond_2b

    :cond_27
    if-nez p1, :cond_45

    if-nez p2, :cond_45

    :cond_2b
    move v3, v2

    :goto_2c
    if-ne p1, v5, :cond_47

    if-ne p2, v5, :cond_47

    :goto_30
    if-nez v2, :cond_4e

    if-eqz v3, :cond_49

    iput v0, p0, Lcom/unity3d/player/UnityPlayer;->z:I

    iput v0, p0, Lcom/unity3d/player/UnityPlayer;->A:I

    :cond_38
    :goto_38
    new-instance v0, Lcom/unity3d/player/UnityPlayer$12;

    move-object v1, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/unity3d/player/UnityPlayer$12;-><init>(Lcom/unity3d/player/UnityPlayer;ZZLandroid/view/SurfaceView;IIZ)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    goto :goto_f

    :cond_45
    move v3, v0

    goto :goto_2c

    :cond_47
    move v2, v0

    goto :goto_30

    :cond_49
    iput p1, p0, Lcom/unity3d/player/UnityPlayer;->z:I

    iput p2, p0, Lcom/unity3d/player/UnityPlayer;->A:I

    goto :goto_38

    :cond_4e
    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->z:I

    if-nez v0, :cond_38

    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->A:I

    goto :goto_38
.end method

.method protected setSoftInputStr(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/unity3d/player/UnityPlayer$15;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/UnityPlayer$15;-><init>(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setWakeLock(Z)V
    .registers 4

    const-string v0, "project"

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->o:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/String;Landroid/os/PowerManager$WakeLock;Z)V

    return-void
.end method

.method protected showSoftInput(Ljava/lang/String;IZZZZLjava/lang/String;)V
    .registers 18

    new-instance v0, Lcom/unity3d/player/UnityPlayer$13;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/unity3d/player/UnityPlayer$13;-><init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;IZZZZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected showVideoPlayer(Ljava/lang/String;IIIZII)V
    .registers 17

    new-instance v0, Lcom/unity3d/player/UnityPlayer$18;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/unity3d/player/UnityPlayer$18;-><init>(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;IIIZII)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected startActivityIndicator()V
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->I:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected stopActivityIndicator()V
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->J:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected vibrate(I)V
    .registers 5

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->u:Landroid/os/Vibrator;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->u:Landroid/os/Vibrator;

    :cond_10
    if-nez p1, :cond_18

    :try_start_12
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->u:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->u:Landroid/os/Vibrator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1e} :catch_1f

    goto :goto_17

    :catch_1f
    move-exception v0

    const/4 v0, 0x5

    const-string v1, "android.permission.VIBRATE not available?"

    invoke-static {v0, v1}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    goto :goto_17
.end method

.method protected vibrationSupported()Z
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->u:Landroid/os/Vibrator;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->u:Landroid/os/Vibrator;

    :cond_10
    sget-boolean v0, Lcom/unity3d/player/u;->d:Z

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/unity3d/player/u;->k:Lcom/unity3d/player/l;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->u:Landroid/os/Vibrator;

    invoke-interface {v0, v1}, Lcom/unity3d/player/l;->a(Landroid/os/Vibrator;)Z

    move-result v0

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x1

    goto :goto_1c
.end method

.method public windowFocusChanged(Z)V
    .registers 5

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/ad;->a(Z)V

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/x;

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->reportSoftInputStr(Ljava/lang/String;IZ)V

    :cond_11
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->h()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    new-instance v1, Lcom/unity3d/player/UnityPlayer$29;

    invoke-direct {v1, p0, p1}, Lcom/unity3d/player/UnityPlayer$29;-><init>(Lcom/unity3d/player/UnityPlayer;Z)V

    invoke-interface {v0, v1}, Lcom/unity3d/player/UnityGL;->queueEvent(Ljava/lang/Runnable;)V

    :cond_23
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->h()V

    return-void
.end method
