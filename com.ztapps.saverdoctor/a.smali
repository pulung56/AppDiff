.class public abstract Lcom/ztapps/saverdoctor/h/a;
.super Ljava/lang/Object;
.source "CommonStatistics.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ztapps/saverdoctor/h/a;
    .registers 2

    .prologue
    .line 12
    new-instance v0, Lcom/ztapps/saverdoctor/h/b;

    invoke-direct {v0}, Lcom/ztapps/saverdoctor/h/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/app/Activity;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
.end method

.method public abstract b(Landroid/app/Activity;)V
.end method

.method public abstract c(Landroid/app/Activity;)V
.end method
