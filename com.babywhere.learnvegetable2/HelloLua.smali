.class public Lcom/babywhere/demo/HelloLua;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "HelloLua.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static adView:Landroid/widget/RelativeLayout;

.field static mContext:Landroid/content/Context;

.field private static ml:Lcom/umeng/analytics/MobclickAgent;

.field public static parentLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;


# instance fields
.field final mController:Lcom/umeng/socialize/controller/UMSocialService;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 69
    sput-object v0, Lcom/babywhere/demo/HelloLua;->ml:Lcom/umeng/analytics/MobclickAgent;

    .line 72
    sput-object v0, Lcom/babywhere/demo/HelloLua;->mContext:Landroid/content/Context;

    .line 315
    const-string v0, "cocos2dlua"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    .line 71
    const-string v0, "com.umeng.share"

    sget-object v1, Lcom/umeng/socialize/controller/RequestType;->SOCIAL:Lcom/umeng/socialize/controller/RequestType;

    invoke-static {v0, v1}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;Lcom/umeng/socialize/controller/RequestType;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    iput-object v0, p0, Lcom/babywhere/demo/HelloLua;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    .line 64
    return-void
.end method

.method static synthetic access$0()Landroid/widget/RelativeLayout;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/babywhere/demo/HelloLua;->adView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private initAd()V
    .registers 7

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 295
    const-string v0, "cfc69414187bd8ade5c17c797a107525"

    .line 296
    .local v0, "adStr":Ljava/lang/String;
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/babywhere/demo/HelloLua;->adView:Landroid/widget/RelativeLayout;

    .line 297
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v2, Lcom/babywhere/demo/HelloLua;->parentLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 300
    sget-object v2, Lcom/babywhere/demo/HelloLua;->adView:Landroid/widget/RelativeLayout;

    const/16 v3, 0x51

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 301
    invoke-virtual {p0}, Lcom/babywhere/demo/HelloLua;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 303
    .local v1, "tempHeight":I
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "height    "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/babywhere/demo/HelloLua;->adView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 304
    sget-object v2, Lcom/babywhere/demo/HelloLua;->adView:Landroid/widget/RelativeLayout;

    div-int/lit8 v3, v1, 0x8

    sub-int v3, v1, v3

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 308
    invoke-static {p0, v0}, Lcom/feiwo/view/FwBannerManager;->init(Landroid/content/Context;Ljava/lang/String;)I

    .line 309
    sget-object v2, Lcom/babywhere/demo/HelloLua;->adView:Landroid/widget/RelativeLayout;

    invoke-static {v2}, Lcom/feiwo/view/FwBannerManager;->setParentView(Landroid/view/ViewGroup;)V

    .line 310
    sget-object v2, Lcom/babywhere/demo/HelloLua;->adView:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/babywhere/demo/HelloLua;->parentLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v2, v3}, Lcom/babywhere/demo/HelloLua;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 76
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    new-instance v4, Lcom/umeng/analytics/MobclickAgent;

    invoke-direct {v4}, Lcom/umeng/analytics/MobclickAgent;-><init>()V

    sput-object v4, Lcom/babywhere/demo/HelloLua;->ml:Lcom/umeng/analytics/MobclickAgent;

    .line 78
    sget-object v4, Lcom/babywhere/demo/HelloLua;->ml:Lcom/umeng/analytics/MobclickAgent;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    invoke-virtual {p0}, Lcom/babywhere/demo/HelloLua;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 81
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "language":Ljava/lang/String;
    const-string v3, ""

    .line 83
    .local v3, "shareStr":Ljava/lang/String;
    const-string v4, "zh"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u8fd9\u4e2aApp\u592a\u597d\u73a9\u4e86\uff0c\u5feb\u70b9\u6765\u4e0b\u8f7d\u5427!      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    :goto_3b
    new-instance v2, Lcom/umeng/socialize/controller/UMFacebookHandler;

    sget-object v4, Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;->PHOTO:Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;

    invoke-direct {v2, p0, v4}, Lcom/umeng/socialize/controller/UMFacebookHandler;-><init>(Landroid/app/Activity;Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;)V

    .line 89
    .local v2, "mFacebookHandler":Lcom/umeng/socialize/controller/UMFacebookHandler;
    invoke-virtual {v2}, Lcom/umeng/socialize/controller/UMFacebookHandler;->addToSocialSDK()V

    .line 90
    iget-object v4, p0, Lcom/babywhere/demo/HelloLua;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ", https://play.google.com/store/apps/details?id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/babywhere/demo/HelloLua;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/umeng/socialize/controller/UMSocialService;->setShareContent(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/babywhere/demo/HelloLua;->getContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/babywhere/demo/HelloLua;->mContext:Landroid/content/Context;

    .line 92
    iget-object v4, p0, Lcom/babywhere/demo/HelloLua;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v4}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v4

    sget-object v5, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TWITTER:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string v6, "com.umeng.share"

    invoke-virtual {v4, p0, v5, v6, v8}, Lcom/umeng/socialize/bean/SocializeConfig;->supportAppPlatform(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Z)V

    .line 94
    iget-object v4, p0, Lcom/babywhere/demo/HelloLua;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v4}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/4 v6, 0x0

    sget-object v7, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v7, v5, v6

    sget-object v6, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TWITTER:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v6, v5, v8

    const/4 v6, 0x2

    sget-object v7, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/umeng/socialize/bean/SocializeConfig;->setPlatforms([Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 95
    invoke-direct {p0}, Lcom/babywhere/demo/HelloLua;->initAd()V

    .line 97
    new-instance v4, Lcom/babywhere/demo/HelloLua$1;

    invoke-direct {v4, p0}, Lcom/babywhere/demo/HelloLua$1;-><init>(Lcom/babywhere/demo/HelloLua;)V

    iput-object v4, p0, Lcom/babywhere/demo/HelloLua;->mHandler:Landroid/os/Handler;

    .line 273
    iget-object v4, p0, Lcom/babywhere/demo/HelloLua;->mHandler:Landroid/os/Handler;

    invoke-static {v4}, Lcom/babywhere/demo/HelloHelper;->init(Landroid/os/Handler;)V

    .line 274
    invoke-virtual {p0}, Lcom/babywhere/demo/HelloLua;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/babywhere/demo/HelloHelper;->setPackageName(Ljava/lang/String;)V

    .line 275
    return-void

    .line 86
    .end local v2    # "mFacebookHandler":Lcom/umeng/socialize/controller/UMFacebookHandler;
    :cond_ae
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Excellent app for kids, down it now!    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3b
.end method

.method public onCreateGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .registers 2

    .prologue
    .line 290
    new-instance v0, Lcom/babywhere/demo/LuaGLSurfaceView;

    invoke-direct {v0, p0}, Lcom/babywhere/demo/LuaGLSurfaceView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 285
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 286
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 287
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 279
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 280
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 281
    return-void
.end method
