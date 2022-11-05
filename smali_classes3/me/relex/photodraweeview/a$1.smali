.class Lme/relex/photodraweeview/a$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Attacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/relex/photodraweeview/a;-><init>(Lcom/facebook/drawee/view/DraweeView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/relex/photodraweeview/a;


# direct methods
.method constructor <init>(Lme/relex/photodraweeview/a;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lme/relex/photodraweeview/a$1;->a:Lme/relex/photodraweeview/a;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 77
    iget-object v0, p0, Lme/relex/photodraweeview/a$1;->a:Lme/relex/photodraweeview/a;

    invoke-static {v0}, Lme/relex/photodraweeview/a;->a(Lme/relex/photodraweeview/a;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lme/relex/photodraweeview/a$1;->a:Lme/relex/photodraweeview/a;

    invoke-static {v0}, Lme/relex/photodraweeview/a;->a(Lme/relex/photodraweeview/a;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lme/relex/photodraweeview/a$1;->a:Lme/relex/photodraweeview/a;

    invoke-virtual {v1}, Lme/relex/photodraweeview/a;->a()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 80
    :cond_0
    return-void
.end method
