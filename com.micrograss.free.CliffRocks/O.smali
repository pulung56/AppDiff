.class final Lcom/adsmogo/adapters/api/O;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

.field private synthetic b:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;)V
    .registers 3

    iput-object p1, p0, Lcom/adsmogo/adapters/api/O;->b:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/adsmogo/adapters/api/O;->a:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/O;->a:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->a(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adsmogo/adapters/api/N;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/O;->b:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/O;->a:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    invoke-direct {v1, v2, v3}, Lcom/adsmogo/adapters/api/N;-><init>(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e
.end method
