.class Lcom/smaato/soma/s$9$1;
.super Ljava/lang/Object;
.source "ToasterBanner.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/s$9;->a()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/s$9;


# direct methods
.method constructor <init>(Lcom/smaato/soma/s$9;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/smaato/soma/s$9$1;->a:Lcom/smaato/soma/s$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 410
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 399
    new-instance v0, Lcom/smaato/soma/s$9$1$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/s$9$1$1;-><init>(Lcom/smaato/soma/s$9$1;)V

    .line 407
    invoke-virtual {v0}, Lcom/smaato/soma/s$9$1$1;->c()Ljava/lang/Object;

    .line 408
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 394
    return-void
.end method
