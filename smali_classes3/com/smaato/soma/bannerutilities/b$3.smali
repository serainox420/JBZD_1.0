.class Lcom/smaato/soma/bannerutilities/b$3;
.super Ljava/lang/Object;
.source "BannerAnimator.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/bannerutilities/b;->a(Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/bannerutilities/b;


# direct methods
.method constructor <init>(Lcom/smaato/soma/bannerutilities/b;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/b$3;->a:Lcom/smaato/soma/bannerutilities/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lcom/smaato/soma/bannerutilities/b$3$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/smaato/soma/bannerutilities/b$3$1;-><init>(Lcom/smaato/soma/bannerutilities/b$3;Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 171
    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/b$3$1;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 155
    return v0
.end method
