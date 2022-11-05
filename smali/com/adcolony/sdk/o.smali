.class Lcom/adcolony/sdk/o;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# instance fields
.field a:Lcom/adcolony/sdk/p;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Ljava/lang/String;

.field h:Z

.field i:Lcom/adcolony/sdk/c;

.field j:Lcom/adcolony/sdk/z;

.field k:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/adcolony/sdk/z;ILcom/adcolony/sdk/c;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/o;->setEGLContextClientVersion(I)V

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/o;->setPreserveEGLContextOnPause(Z)V

    .line 47
    iput p3, p0, Lcom/adcolony/sdk/o;->b:I

    .line 48
    iput-object p2, p0, Lcom/adcolony/sdk/o;->j:Lcom/adcolony/sdk/z;

    .line 49
    iput-object p4, p0, Lcom/adcolony/sdk/o;->i:Lcom/adcolony/sdk/c;

    .line 50
    return-void
.end method


# virtual methods
.method a()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v1, 0x8

    const/4 v7, 0x1

    .line 125
    iget-object v0, p0, Lcom/adcolony/sdk/o;->j:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "ad_session_id"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/o;->g:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/adcolony/sdk/o;->j:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "x"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/o;->c:I

    .line 127
    iget-object v0, p0, Lcom/adcolony/sdk/o;->j:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "y"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/o;->d:I

    .line 128
    iget-object v0, p0, Lcom/adcolony/sdk/o;->j:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "width"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/o;->e:I

    .line 129
    iget-object v0, p0, Lcom/adcolony/sdk/o;->j:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "height"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/o;->f:I

    .line 130
    iget-object v0, p0, Lcom/adcolony/sdk/o;->j:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "transparent"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adcolony/sdk/o;->h:Z

    .line 135
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/adcolony/sdk/o;->setEGLConfigChooser(IIIIII)V

    .line 137
    iget-boolean v0, p0, Lcom/adcolony/sdk/o;->h:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/adcolony/sdk/o;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 140
    invoke-virtual {p0, v7}, Lcom/adcolony/sdk/o;->setZOrderOnTop(Z)V

    .line 148
    :goto_0
    new-instance v0, Lcom/adcolony/sdk/p;

    iget-object v1, p0, Lcom/adcolony/sdk/o;->g:Ljava/lang/String;

    invoke-direct {v0, p0, v7, v1}, Lcom/adcolony/sdk/p;-><init>(Lcom/adcolony/sdk/o;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/adcolony/sdk/o;->a:Lcom/adcolony/sdk/p;

    .line 149
    iget-object v0, p0, Lcom/adcolony/sdk/o;->a:Lcom/adcolony/sdk/p;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/o;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 152
    iget-object v0, p0, Lcom/adcolony/sdk/o;->i:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "RenderView.set_visible"

    new-instance v2, Lcom/adcolony/sdk/o$1;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/o$1;-><init>(Lcom/adcolony/sdk/o;)V

    invoke-static {v1, v2, v7}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/adcolony/sdk/o;->i:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "RenderView.set_bounds"

    new-instance v2, Lcom/adcolony/sdk/o$2;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/o$2;-><init>(Lcom/adcolony/sdk/o;)V

    invoke-static {v1, v2, v7}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/adcolony/sdk/o;->i:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "RenderView.set_visible"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/adcolony/sdk/o;->i:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "RenderView.set_bounds"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/o;->setVisibility(I)V

    .line 178
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/adcolony/sdk/o;->e:I

    iget v2, p0, Lcom/adcolony/sdk/o;->f:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 179
    iget v1, p0, Lcom/adcolony/sdk/o;->c:I

    iget v2, p0, Lcom/adcolony/sdk/o;->d:I

    invoke-virtual {v0, v1, v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 180
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 181
    iget-object v1, p0, Lcom/adcolony/sdk/o;->i:Lcom/adcolony/sdk/c;

    invoke-virtual {v1, p0, v0}, Lcom/adcolony/sdk/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/o;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_0
.end method

.method a(Lcom/adcolony/sdk/z;)Z
    .locals 2

    .prologue
    .line 218
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/adcolony/sdk/o;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "container_id"

    .line 219
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/adcolony/sdk/o;->i:Lcom/adcolony/sdk/c;

    iget v1, v1, Lcom/adcolony/sdk/c;->n:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    .line 220
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/o;->i:Lcom/adcolony/sdk/c;

    iget-object v1, v1, Lcom/adcolony/sdk/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x1

    .line 225
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Lcom/adcolony/sdk/z;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 235
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/o;->c:I

    .line 236
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/o;->d:I

    .line 237
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/o;->e:I

    .line 238
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/o;->f:I

    .line 240
    invoke-virtual {p0}, Lcom/adcolony/sdk/o;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 241
    iget v1, p0, Lcom/adcolony/sdk/o;->c:I

    iget v2, p0, Lcom/adcolony/sdk/o;->d:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 242
    iget v1, p0, Lcom/adcolony/sdk/o;->e:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 243
    iget v1, p0, Lcom/adcolony/sdk/o;->f:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 244
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/o;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    invoke-virtual {p0}, Lcom/adcolony/sdk/o;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/adcolony/sdk/o;->e:I

    iget v2, p0, Lcom/adcolony/sdk/o;->f:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 247
    return-void
.end method

.method b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 189
    iget-boolean v1, p0, Lcom/adcolony/sdk/o;->k:Z

    if-eqz v1, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 197
    :goto_0
    return v0

    .line 193
    :cond_0
    iput-boolean v0, p0, Lcom/adcolony/sdk/o;->k:Z

    .line 195
    iget-object v1, p0, Lcom/adcolony/sdk/o;->a:Lcom/adcolony/sdk/p;

    invoke-virtual {v1}, Lcom/adcolony/sdk/p;->a()V

    goto :goto_0
.end method

.method c(Lcom/adcolony/sdk/z;)V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "visible"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    .line 255
    if-eqz v0, :cond_0

    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/o;->setVisibility(I)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/o;->setVisibility(I)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/adcolony/sdk/o;->b()Z

    .line 207
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const v7, 0xff00

    const/4 v1, 0x1

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 59
    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 69
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v4

    .line 70
    const-string v5, "view_id"

    iget v6, p0, Lcom/adcolony/sdk/o;->b:I

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 71
    const-string v5, "ad_session_id"

    iget-object v6, p0, Lcom/adcolony/sdk/o;->g:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    const-string v5, "container_x"

    iget v6, p0, Lcom/adcolony/sdk/o;->c:I

    add-int/2addr v6, v2

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 73
    const-string v5, "container_y"

    iget v6, p0, Lcom/adcolony/sdk/o;->d:I

    add-int/2addr v6, v3

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 74
    const-string v5, "view_x"

    invoke-static {v4, v5, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 75
    const-string v2, "view_y"

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 76
    const-string v2, "id"

    iget-object v3, p0, Lcom/adcolony/sdk/o;->i:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->n:I

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 78
    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v1

    .line 117
    goto :goto_0

    .line 81
    :pswitch_1
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_began"

    iget-object v3, p0, Lcom/adcolony/sdk/o;->i:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_1

    .line 84
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/2addr v0, v7

    shr-int/lit8 v0, v0, 0x8

    .line 85
    const-string v2, "container_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iget v5, p0, Lcom/adcolony/sdk/o;->c:I

    add-int/2addr v3, v5

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 86
    const-string v2, "container_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iget v5, p0, Lcom/adcolony/sdk/o;->d:I

    add-int/2addr v3, v5

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 87
    const-string v2, "view_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 88
    const-string v2, "view_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v4, v2, v0}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 89
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_began"

    iget-object v3, p0, Lcom/adcolony/sdk/o;->i:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_1

    .line 92
    :pswitch_3
    iget-object v0, p0, Lcom/adcolony/sdk/o;->i:Lcom/adcolony/sdk/c;

    iget-boolean v0, v0, Lcom/adcolony/sdk/c;->q:Z

    if-nez v0, :cond_1

    .line 94
    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/adcolony/sdk/o;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ax;

    iput-object v0, v2, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/ax;

    .line 96
    :cond_1
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_ended"

    iget-object v3, p0, Lcom/adcolony/sdk/o;->i:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_1

    .line 99
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/2addr v0, v7

    shr-int/lit8 v0, v0, 0x8

    .line 100
    const-string v2, "container_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iget v5, p0, Lcom/adcolony/sdk/o;->c:I

    add-int/2addr v3, v5

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 101
    const-string v2, "container_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iget v5, p0, Lcom/adcolony/sdk/o;->d:I

    add-int/2addr v3, v5

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 102
    const-string v2, "view_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 103
    const-string v2, "view_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v4, v2, v0}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 104
    iget-object v0, p0, Lcom/adcolony/sdk/o;->i:Lcom/adcolony/sdk/c;

    iget-boolean v0, v0, Lcom/adcolony/sdk/c;->q:Z

    if-nez v0, :cond_2

    .line 106
    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/adcolony/sdk/o;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ax;

    iput-object v0, v2, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/ax;

    .line 108
    :cond_2
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_ended"

    iget-object v3, p0, Lcom/adcolony/sdk/o;->i:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_1

    .line 111
    :pswitch_5
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_cancelled"

    iget-object v3, p0, Lcom/adcolony/sdk/o;->i:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_1

    .line 114
    :pswitch_6
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_moved"

    iget-object v3, p0, Lcom/adcolony/sdk/o;->i:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_1

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
