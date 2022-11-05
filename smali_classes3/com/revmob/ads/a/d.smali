.class public abstract Lcom/revmob/ads/a/d;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/revmob/ads/a/d;->a:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/revmob/ads/a/d;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/view/animation/Animation;
.end method

.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/revmob/ads/a/d;->a:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/a/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract b()Landroid/view/animation/Animation;
.end method

.method public abstract c()Landroid/view/animation/Animation;
.end method

.method public abstract d()Landroid/view/animation/Animation;
.end method

.method public abstract e()Landroid/view/animation/Animation;
.end method

.method public abstract f()Landroid/view/animation/Animation;
.end method

.method public abstract g()Landroid/view/animation/Animation;
.end method

.method public abstract h()Landroid/view/animation/Animation;
.end method

.method public abstract i()Landroid/view/animation/Animation;
.end method

.method public abstract j()Landroid/view/animation/Animation;
.end method

.method public final k()Landroid/view/animation/Animation;
    .locals 4

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v0, p0, Lcom/revmob/ads/a/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "fade_in"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/revmob/ads/a/d;->a()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    const-string v3, "fade_out"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/revmob/ads/a/d;->b()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    const-string v3, "zoom_in"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/revmob/ads/a/d;->g()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_3
    const-string v3, "zoom_out"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/revmob/ads/a/d;->h()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_4
    const-string v3, "slide_up"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/revmob/ads/a/d;->c()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_5
    const-string v3, "slide_down"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/revmob/ads/a/d;->d()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_6
    const-string v3, "slide_right"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/revmob/ads/a/d;->e()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_7
    const-string v3, "slide_left"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/revmob/ads/a/d;->f()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_8
    const-string v3, "rotate_clockwise"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/revmob/ads/a/d;->i()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_9
    const-string v3, "rotate_counterclockwise"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/revmob/ads/a/d;->j()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_a
    iget-wide v2, p0, Lcom/revmob/ads/a/d;->a:J

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    return-object v1
.end method
