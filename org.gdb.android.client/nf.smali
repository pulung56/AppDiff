.class final Lorg/gdb/android/client/nf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/gdb/android/client/ne;

.field private final synthetic b:Lorg/gdb/android/client/widget/ConfirmDialog;


# direct methods
.method constructor <init>(Lorg/gdb/android/client/ne;Lorg/gdb/android/client/widget/ConfirmDialog;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lorg/gdb/android/client/nf;->a:Lorg/gdb/android/client/ne;

    iput-object p2, p0, Lorg/gdb/android/client/nf;->b:Lorg/gdb/android/client/widget/ConfirmDialog;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 156
    iget-object v0, p0, Lorg/gdb/android/client/nf;->b:Lorg/gdb/android/client/widget/ConfirmDialog;

    invoke-virtual {v0}, Lorg/gdb/android/client/widget/ConfirmDialog;->dismiss()V

    .line 157
    iget-object v0, p0, Lorg/gdb/android/client/nf;->a:Lorg/gdb/android/client/ne;

    iget-object v0, v0, Lorg/gdb/android/client/ne;->a:Lorg/gdb/android/client/UseCouponActivity;

    iget-object v1, p0, Lorg/gdb/android/client/nf;->a:Lorg/gdb/android/client/ne;

    invoke-static {v1}, Lorg/gdb/android/client/ne;->a(Lorg/gdb/android/client/ne;)Lorg/gdb/android/client/vo/CouponVO;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gdb/android/client/UseCouponActivity;->a(Lorg/gdb/android/client/UseCouponActivity;Lorg/gdb/android/client/vo/CouponVO;)V

    .line 158
    return-void
.end method
