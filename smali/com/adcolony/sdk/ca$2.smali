.class Lcom/adcolony/sdk/ca$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ca;->b(Lcom/adcolony/sdk/cm;)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/cm;

.field final synthetic b:Lcom/adcolony/sdk/ca;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ca;Lcom/adcolony/sdk/cm;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/adcolony/sdk/ca$2;->b:Lcom/adcolony/sdk/ca;

    iput-object p2, p0, Lcom/adcolony/sdk/ca$2;->a:Lcom/adcolony/sdk/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/adcolony/sdk/ca$2;->a:Lcom/adcolony/sdk/cm;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/adcolony/sdk/cm;->d:J

    .line 141
    iget-object v0, p0, Lcom/adcolony/sdk/ca$2;->b:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->c(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/by;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/ca$2;->b:Lcom/adcolony/sdk/ca;

    invoke-static {v1}, Lcom/adcolony/sdk/ca;->b(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/ca$c;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/ca$2;->a:Lcom/adcolony/sdk/cm;

    invoke-virtual {v2}, Lcom/adcolony/sdk/cm;->b()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/adcolony/sdk/by;->b(Lcom/adcolony/sdk/bv;J)V

    .line 142
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 150
    return-void
.end method
