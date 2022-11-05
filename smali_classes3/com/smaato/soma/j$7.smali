.class Lcom/smaato/soma/j$7;
.super Ljava/lang/Object;
.source "BaseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/j;->f()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/j;


# direct methods
.method constructor <init>(Lcom/smaato/soma/j;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/smaato/soma/j$7;->a:Lcom/smaato/soma/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/smaato/soma/j$7;->a:Lcom/smaato/soma/j;

    invoke-static {v0}, Lcom/smaato/soma/j;->a(Lcom/smaato/soma/j;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/smaato/soma/j$7;->a:Lcom/smaato/soma/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smaato/soma/j;->a(Lcom/smaato/soma/j;I)I

    .line 500
    :cond_0
    return-void
.end method
