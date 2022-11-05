.class Lcom/adcolony/sdk/ax$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ax;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ax;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ax;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/adcolony/sdk/ax$1;->a:Lcom/adcolony/sdk/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 299
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v5

    .line 300
    const-string v0, "id"

    iget-object v3, p0, Lcom/adcolony/sdk/ax$1;->a:Lcom/adcolony/sdk/ax;

    iget-object v3, v3, Lcom/adcolony/sdk/ax;->d:Ljava/lang/String;

    invoke-static {v5, v0, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 302
    :goto_0
    iget-object v0, p0, Lcom/adcolony/sdk/ax$1;->a:Lcom/adcolony/sdk/ax;

    iget-boolean v0, v0, Lcom/adcolony/sdk/ax;->g:Z

    if-nez v0, :cond_b

    .line 305
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 306
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 308
    iget-object v0, p0, Lcom/adcolony/sdk/ax$1;->a:Lcom/adcolony/sdk/ax;

    invoke-virtual {v0, v4}, Lcom/adcolony/sdk/ax;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 309
    iget-object v0, p0, Lcom/adcolony/sdk/ax$1;->a:Lcom/adcolony/sdk/ax;

    invoke-virtual {v0, v6}, Lcom/adcolony/sdk/ax;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 311
    iget-object v0, p0, Lcom/adcolony/sdk/ax$1;->a:Lcom/adcolony/sdk/ax;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ax;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_0

    .line 314
    iget-object v3, p0, Lcom/adcolony/sdk/ax$1;->a:Lcom/adcolony/sdk/ax;

    const/4 v7, 0x0

    invoke-interface {v0, v3, v6, v7}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 317
    :cond_0
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v3, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/adcolony/sdk/ax$1;->a:Lcom/adcolony/sdk/ax;

    iget-object v3, v3, Lcom/adcolony/sdk/ax;->a:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->k:I

    div-int/lit8 v3, v3, 0x2

    if-le v0, v3, :cond_4

    move v0, v1

    .line 318
    :goto_1
    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v7

    iget-object v7, p0, Lcom/adcolony/sdk/ax$1;->a:Lcom/adcolony/sdk/ax;

    iget-object v7, v7, Lcom/adcolony/sdk/ax;->a:Lcom/adcolony/sdk/c;

    iget v7, v7, Lcom/adcolony/sdk/c;->k:I

    div-int/lit8 v7, v7, 0x2

    if-lt v3, v7, :cond_1

    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v7

    iget-object v7, p0, Lcom/adcolony/sdk/ax$1;->a:Lcom/adcolony/sdk/ax;

    iget-object v7, v7, Lcom/adcolony/sdk/ax;->a:Lcom/adcolony/sdk/c;

    iget v7, v7, Lcom/adcolony/sdk/c;->k:I

    if-lt v3, v7, :cond_5

    :cond_1
    iget-object v3, p0, Lcom/adcolony/sdk/ax$1;->a:Lcom/adcolony/sdk/ax;

    iget-boolean v3, v3, Lcom/adcolony/sdk/ax;->i:Z

    if-eqz v3, :cond_5

    move v3, v1

    .line 320
    :goto_2
    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/adcolony/sdk/ax$1;->a:Lcom/adcolony/sdk/ax;

    iget-object v8, v8, Lcom/adcolony/sdk/ax;->a:Lcom/adcolony/sdk/c;

    iget v8, v8, Lcom/adcolony/sdk/c;->k:I

    if-gt v7, v8, :cond_2

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    if-ltz v7, :cond_2

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_2

    iget v4, v6, Landroid/graphics/Rect;->top:I

    if-gtz v4, :cond_6

    :cond_2
    move v4, v1

    .line 326
    :goto_3
    if-nez v4, :cond_8

    if-nez v3, :cond_8

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/adcolony/sdk/ax$1;->a:Lcom/adcolony/sdk/ax;

    iget-boolean v3, v3, Lcom/adcolony/sdk/ax;->f:Z

    if-nez v3, :cond_8

    .line 328
    iget-object v0, p0, Lcom/adcolony/sdk/ax$1;->a:Lcom/adcolony/sdk/ax;

    iput-boolean v1, v0, Lcom/adcolony/sdk/ax;->i:Z

    .line 329
    iget-object v0, p0, Lcom/adcolony/sdk/ax$1;->a:Lcom/adcolony/sdk/ax;

    iput-boolean v1, v0, Lcom/adcolony/sdk/ax;->f:Z

    .line 330
    new-instance v3, Lcom/adcolony/sdk/z;

    iget-object v0, p0, Lcom/adcolony/sdk/ax$1;->a:Lcom/adcolony/sdk/ax;

    iget-boolean v0, v0, Lcom/adcolony/sdk/ax;->h:Z

    if-eqz v0, :cond_7

    const-string v0, "AdSession.on_native_ad_view_visible"

    :goto_4
    iget-object v4, p0, Lcom/adcolony/sdk/ax$1;->a:Lcom/adcolony/sdk/ax;

    iget-object v4, v4, Lcom/adcolony/sdk/ax;->a:Lcom/adcolony/sdk/c;

    iget v4, v4, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v3, v0, v4, v5}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v3}, Lcom/adcolony/sdk/z;->b()V

    .line 341
    :cond_3
    :goto_5
    const-wide/16 v6, 0x32

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 343
    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 317
    goto :goto_1

    :cond_5
    move v3, v2

    .line 318
    goto :goto_2

    :cond_6
    move v4, v2

    .line 320
    goto :goto_3

    .line 330
    :cond_7
    const-string v0, "AdSession.on_ad_view_visible"

    goto :goto_4

    .line 333
    :cond_8
    if-eqz v0, :cond_9

    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    :cond_9
    iget-object v0, p0, Lcom/adcolony/sdk/ax$1;->a:Lcom/adcolony/sdk/ax;

    iget-boolean v0, v0, Lcom/adcolony/sdk/ax;->f:Z

    if-eqz v0, :cond_3

    .line 335
    iget-object v0, p0, Lcom/adcolony/sdk/ax$1;->a:Lcom/adcolony/sdk/ax;

    iput-boolean v2, v0, Lcom/adcolony/sdk/ax;->f:Z

    .line 336
    new-instance v3, Lcom/adcolony/sdk/z;

    iget-object v0, p0, Lcom/adcolony/sdk/ax$1;->a:Lcom/adcolony/sdk/ax;

    iget-boolean v0, v0, Lcom/adcolony/sdk/ax;->h:Z

    if-eqz v0, :cond_a

    const-string v0, "AdSession.on_native_ad_view_hidden"

    :goto_6
    iget-object v4, p0, Lcom/adcolony/sdk/ax$1;->a:Lcom/adcolony/sdk/ax;

    iget-object v4, v4, Lcom/adcolony/sdk/ax;->a:Lcom/adcolony/sdk/c;

    iget v4, v4, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v3, v0, v4, v5}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v3}, Lcom/adcolony/sdk/z;->b()V

    .line 337
    sget-object v0, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v3, "AdColonyAdView has been hidden."

    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_5

    .line 336
    :cond_a
    const-string v0, "AdSession.on_ad_view_hidden"

    goto :goto_6

    .line 348
    :cond_b
    return-void
.end method
