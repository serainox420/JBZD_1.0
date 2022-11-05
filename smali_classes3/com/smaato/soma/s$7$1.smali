.class Lcom/smaato/soma/s$7$1;
.super Ljava/lang/Object;
.source "ToasterBanner.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/s$7;->a()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/smaato/soma/s$7;


# direct methods
.method constructor <init>(Lcom/smaato/soma/s$7;I)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/smaato/soma/s$7$1;->b:Lcom/smaato/soma/s$7;

    iput p2, p0, Lcom/smaato/soma/s$7$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 353
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 339
    new-instance v0, Lcom/smaato/soma/s$7$1$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/s$7$1$1;-><init>(Lcom/smaato/soma/s$7$1;)V

    .line 350
    invoke-virtual {v0}, Lcom/smaato/soma/s$7$1$1;->c()Ljava/lang/Object;

    .line 351
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 336
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 334
    return-void
.end method
