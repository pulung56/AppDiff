.class public final Lcom/google/android/gms/common/images/ImageManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/images/ImageManager$a;,
        Lcom/google/android/gms/common/images/ImageManager$b;,
        Lcom/google/android/gms/common/images/ImageManager$e;,
        Lcom/google/android/gms/common/images/ImageManager$f;,
        Lcom/google/android/gms/common/images/ImageManager$c;,
        Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;,
        Lcom/google/android/gms/common/images/ImageManager$d;,
        Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;
    }
.end annotation


# static fields
.field private static final Kl:Ljava/lang/Object;

.field private static Km:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static Kn:Lcom/google/android/gms/common/images/ImageManager;

.field private static Ko:Lcom/google/android/gms/common/images/ImageManager;


# instance fields
.field private final Kp:Ljava/util/concurrent/ExecutorService;

.field private final Kq:Lcom/google/android/gms/common/images/ImageManager$b;

.field private final Kr:Lcom/google/android/gms/internal/iz;

.field private final Ks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/images/a;",
            "Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final Kt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final Ku:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->Kl:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->Km:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "withMemoryCache"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Kp:Ljava/util/concurrent/ExecutorService;

    if-eqz p2, :cond_4c

    new-instance v0, Lcom/google/android/gms/common/images/ImageManager$b;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/images/ImageManager$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Kq:Lcom/google/android/gms/common/images/ImageManager$b;

    invoke-static {}, Lcom/google/android/gms/internal/kc;->hE()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-direct {p0}, Lcom/google/android/gms/common/images/ImageManager;->gH()V

    :cond_2f
    :goto_2f
    new-instance v0, Lcom/google/android/gms/internal/iz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/iz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Kr:Lcom/google/android/gms/internal/iz;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Ks:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Kt:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Ku:Ljava/util/Map;

    return-void

    :cond_4c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Kq:Lcom/google/android/gms/common/images/ImageManager$b;

    goto :goto_2f
.end method

.method static synthetic a(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/a$a;)Landroid/graphics/Bitmap;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/a$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/gms/common/images/a$a;)Landroid/graphics/Bitmap;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Kq:Lcom/google/android/gms/common/images/ImageManager$b;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Kq:Lcom/google/android/gms/common/images/ImageManager$b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/images/ImageManager$b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_5
.end method

.method static synthetic a(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Ks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static c(Landroid/content/Context;Z)Lcom/google/android/gms/common/images/ImageManager;
    .registers 4

    if-eqz p1, :cond_11

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->Ko:Lcom/google/android/gms/common/images/ImageManager;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/gms/common/images/ImageManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/images/ImageManager;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->Ko:Lcom/google/android/gms/common/images/ImageManager;

    :cond_e
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->Ko:Lcom/google/android/gms/common/images/ImageManager;

    :goto_10
    return-object v0

    :cond_11
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->Kn:Lcom/google/android/gms/common/images/ImageManager;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/google/android/gms/common/images/ImageManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/images/ImageManager;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->Kn:Lcom/google/android/gms/common/images/ImageManager;

    :cond_1d
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->Kn:Lcom/google/android/gms/common/images/ImageManager;

    goto :goto_10
.end method

.method static synthetic c(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/iz;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Kr:Lcom/google/android/gms/internal/iz;

    return-object v0
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/gms/common/images/ImageManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->c(Landroid/content/Context;Z)Lcom/google/android/gms/common/images/ImageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Ku:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Kt:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/concurrent/ExecutorService;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Kp:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private gH()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/common/images/ImageManager$e;

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager;->Kq:Lcom/google/android/gms/common/images/ImageManager$b;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/images/ImageManager$e;-><init>(Lcom/google/android/gms/common/images/ImageManager$b;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method static synthetic gI()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->Kl:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic gJ()Ljava/util/HashSet;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->Km:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/ImageManager$b;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->Kq:Lcom/google/android/gms/common/images/ImageManager$b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/images/a;)V
    .registers 3

    const-string v0, "ImageManager.loadImage() must be called in the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->aT(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/common/images/ImageManager$d;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/images/ImageManager$d;-><init>(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/a;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;I)V
    .registers 4
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "resId"    # I

    .prologue
    new-instance v0, Lcom/google/android/gms/common/images/a$b;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/a$b;-><init>(Landroid/widget/ImageView;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/a;)V

    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .registers 4
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    new-instance v0, Lcom/google/android/gms/common/images/a$b;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/a$b;-><init>(Landroid/widget/ImageView;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/a;)V

    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .registers 5
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "defaultResId"    # I

    .prologue
    new-instance v0, Lcom/google/android/gms/common/images/a$b;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/a$b;-><init>(Landroid/widget/ImageView;Landroid/net/Uri;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/common/images/a;->aw(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/a;)V

    return-void
.end method

.method public loadImage(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    new-instance v0, Lcom/google/android/gms/common/images/a$c;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/a$c;-><init>(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/a;)V

    return-void
.end method

.method public loadImage(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;I)V
    .registers 5
    .param p1, "listener"    # Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "defaultResId"    # I

    .prologue
    new-instance v0, Lcom/google/android/gms/common/images/a$c;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/a$c;-><init>(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/common/images/a;->aw(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/a;)V

    return-void
.end method
