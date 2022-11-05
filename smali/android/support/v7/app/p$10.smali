.class Landroid/support/v7/app/p$10;
.super Landroid/view/animation/Animation;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/p;->b(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/support/v7/app/p;


# direct methods
.method constructor <init>(Landroid/support/v7/app/p;IILandroid/view/View;)V
    .locals 0

    .prologue
    .line 709
    iput-object p1, p0, Landroid/support/v7/app/p$10;->d:Landroid/support/v7/app/p;

    iput p2, p0, Landroid/support/v7/app/p$10;->a:I

    iput p3, p0, Landroid/support/v7/app/p$10;->b:I

    iput-object p4, p0, Landroid/support/v7/app/p$10;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 712
    iget v0, p0, Landroid/support/v7/app/p$10;->a:I

    iget v1, p0, Landroid/support/v7/app/p$10;->a:I

    iget v2, p0, Landroid/support/v7/app/p$10;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 713
    iget-object v1, p0, Landroid/support/v7/app/p$10;->c:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v7/app/p;->a(Landroid/view/View;I)V

    .line 714
    return-void
.end method
