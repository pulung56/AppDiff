.class Lcom/cungo/callrecorder/ui/dj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cungo/callrecorder/ui/ActivityDialPad_;


# direct methods
.method constructor <init>(Lcom/cungo/callrecorder/ui/ActivityDialPad_;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/cungo/callrecorder/ui/dj;->b:Lcom/cungo/callrecorder/ui/ActivityDialPad_;

    iput-object p2, p0, Lcom/cungo/callrecorder/ui/dj;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/cungo/callrecorder/ui/dj;->b:Lcom/cungo/callrecorder/ui/ActivityDialPad_;

    iget-object v1, p0, Lcom/cungo/callrecorder/ui/dj;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cungo/callrecorder/ui/ActivityDialPad_;->a(Lcom/cungo/callrecorder/ui/ActivityDialPad_;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string v1, "ActivityDialPad_"

    const-string v2, "A runtime exception was thrown while executing code in a runnable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method
