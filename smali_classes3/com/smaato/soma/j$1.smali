.class Lcom/smaato/soma/j$1;
.super Landroid/os/Handler;
.source "BaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/j;


# direct methods
.method constructor <init>(Lcom/smaato/soma/j;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/smaato/soma/j$1;->a:Lcom/smaato/soma/j;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method
