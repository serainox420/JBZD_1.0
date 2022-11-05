.class Lcom/smaato/soma/bannerutilities/b$2;
.super Ljava/lang/Object;
.source "BannerAnimator.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/bannerutilities/b;->a(Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/bannerutilities/a;

.field final synthetic b:Lcom/smaato/soma/j;

.field final synthetic c:Lcom/smaato/soma/bannerutilities/b;


# direct methods
.method constructor <init>(Lcom/smaato/soma/bannerutilities/b;Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/j;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/b$2;->c:Lcom/smaato/soma/bannerutilities/b;

    iput-object p2, p0, Lcom/smaato/soma/bannerutilities/b$2;->a:Lcom/smaato/soma/bannerutilities/a;

    iput-object p3, p0, Lcom/smaato/soma/bannerutilities/b$2;->b:Lcom/smaato/soma/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/smaato/soma/bannerutilities/b$2$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smaato/soma/bannerutilities/b$2$1;-><init>(Lcom/smaato/soma/bannerutilities/b$2;Landroid/view/View;ILandroid/view/KeyEvent;)V

    .line 149
    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/b$2$1;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 128
    return v0
.end method
