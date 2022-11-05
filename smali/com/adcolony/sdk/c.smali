.class Lcom/adcolony/sdk/c;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/av;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/as;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/o;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/aw;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/g;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/m;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/q;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field j:I

.field k:I

.field l:I

.field m:Ljava/lang/String;

.field n:I

.field o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adcolony/sdk/ac;",
            ">;"
        }
    .end annotation
.end field

.field p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field q:Z

.field r:Z

.field s:Z

.field t:Landroid/content/Context;

.field u:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 70
    iput-object p1, p0, Lcom/adcolony/sdk/c;->t:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/adcolony/sdk/c;->m:Ljava/lang/String;

    .line 73
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/c;->setBackgroundColor(I)V

    .line 74
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 671
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 672
    const-string v1, "id"

    iget-object v2, p0, Lcom/adcolony/sdk/c;->m:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 674
    new-instance v1, Lcom/adcolony/sdk/z;

    const-string v2, "AdSession.on_error"

    iget v3, p0, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    .line 675
    return-void
.end method

.method a(Lcom/adcolony/sdk/z;)Z
    .locals 2

    .prologue
    .line 85
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "container_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/adcolony/sdk/c;->n:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    .line 86
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Lcom/adcolony/sdk/z;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->a:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->b:Ljava/util/HashMap;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->c:Ljava/util/HashMap;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->d:Ljava/util/HashMap;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->e:Ljava/util/HashMap;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->f:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->g:Ljava/util/HashMap;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->h:Ljava/util/HashMap;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->i:Ljava/util/HashMap;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    .line 119
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/c;->n:I

    .line 120
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "width"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/c;->j:I

    .line 121
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "height"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/c;->k:I

    .line 122
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "module_id"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/c;->l:I

    .line 123
    iget v0, p0, Lcom/adcolony/sdk/c;->n:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/adcolony/sdk/c;->q:Z

    .line 126
    iget v0, p0, Lcom/adcolony/sdk/c;->j:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/adcolony/sdk/c;->k:I

    if-nez v0, :cond_2

    .line 128
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->l()I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/c;->j:I

    .line 129
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyAppOptions;->getMultiWindowEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->m()I

    move-result v0

    invoke-static {}, Lcom/adcolony/sdk/au;->e()I

    move-result v2

    sub-int/2addr v0, v2

    :goto_1
    iput v0, p0, Lcom/adcolony/sdk/c;->k:I

    .line 137
    :goto_2
    iget-object v0, p0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v2, "VideoView.create"

    new-instance v3, Lcom/adcolony/sdk/c$1;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$1;-><init>(Lcom/adcolony/sdk/c;)V

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v2, "VideoView.destroy"

    new-instance v3, Lcom/adcolony/sdk/c$5;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$5;-><init>(Lcom/adcolony/sdk/c;)V

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v2, "WebView.create"

    new-instance v3, Lcom/adcolony/sdk/c$6;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$6;-><init>(Lcom/adcolony/sdk/c;)V

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v2, "WebView.destroy"

    new-instance v3, Lcom/adcolony/sdk/c$7;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$7;-><init>(Lcom/adcolony/sdk/c;)V

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v2, "RenderView.create"

    new-instance v3, Lcom/adcolony/sdk/c$8;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$8;-><init>(Lcom/adcolony/sdk/c;)V

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v2, "RenderView.destroy"

    new-instance v3, Lcom/adcolony/sdk/c$9;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$9;-><init>(Lcom/adcolony/sdk/c;)V

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v2, "TextView.create"

    new-instance v3, Lcom/adcolony/sdk/c$10;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$10;-><init>(Lcom/adcolony/sdk/c;)V

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v2, "TextView.destroy"

    new-instance v3, Lcom/adcolony/sdk/c$11;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$11;-><init>(Lcom/adcolony/sdk/c;)V

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v0, p0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v2, "ImageView.create"

    new-instance v3, Lcom/adcolony/sdk/c$12;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$12;-><init>(Lcom/adcolony/sdk/c;)V

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v2, "ImageView.destroy"

    new-instance v3, Lcom/adcolony/sdk/c$2;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$2;-><init>(Lcom/adcolony/sdk/c;)V

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v0, p0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v2, "ColorView.create"

    new-instance v3, Lcom/adcolony/sdk/c$3;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$3;-><init>(Lcom/adcolony/sdk/c;)V

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v0, p0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v2, "ColorView.destroy"

    new-instance v3, Lcom/adcolony/sdk/c$4;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$4;-><init>(Lcom/adcolony/sdk/c;)V

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v0, p0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "VideoView.create"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v0, p0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "VideoView.destroy"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v0, p0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "WebView.create"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v0, p0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "WebView.destroy"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "RenderView.create"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v0, p0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "RenderView.destroy"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "TextView.create"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v0, p0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "TextView.destroy"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "ImageView.create"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, p0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "ImageView.destroy"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v0, p0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "ColorView.create"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, p0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "ColorView.destroy"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v0, Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/adcolony/sdk/c;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->u:Landroid/widget/VideoView;

    .line 284
    iget-object v0, p0, Lcom/adcolony/sdk/c;->u:Landroid/widget/VideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/adcolony/sdk/c;->u:Landroid/widget/VideoView;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/c;->addView(Landroid/view/View;)V

    .line 286
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 129
    :cond_1
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->m()I

    move-result v0

    goto/16 :goto_1

    .line 133
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/adcolony/sdk/c;->j:I

    iget v3, p0, Lcom/adcolony/sdk/c;->k:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2
.end method

.method c(Lcom/adcolony/sdk/z;)V
    .locals 4

    .prologue
    .line 380
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 381
    new-instance v1, Lcom/adcolony/sdk/g;

    iget-object v2, p0, Lcom/adcolony/sdk/c;->t:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0, p0}, Lcom/adcolony/sdk/g;-><init>(Landroid/content/Context;Lcom/adcolony/sdk/z;ILcom/adcolony/sdk/c;)V

    .line 382
    invoke-virtual {v1}, Lcom/adcolony/sdk/g;->a()V

    .line 383
    iget-object v2, p0, Lcom/adcolony/sdk/c;->e:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v2, p0, Lcom/adcolony/sdk/c;->i:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    return-void
.end method

.method d(Lcom/adcolony/sdk/z;)Z
    .locals 5

    .prologue
    .line 395
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 397
    iget-object v0, p0, Lcom/adcolony/sdk/c;->i:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 398
    iget-object v1, p0, Lcom/adcolony/sdk/c;->e:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/g;

    .line 400
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 402
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v1, p1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const/4 v0, 0x0

    .line 407
    :goto_0
    return v0

    .line 406
    :cond_1
    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/c;->removeView(Landroid/view/View;)V

    .line 407
    const/4 v0, 0x1

    goto :goto_0
.end method

.method e(Lcom/adcolony/sdk/z;)V
    .locals 4

    .prologue
    .line 418
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 419
    new-instance v1, Lcom/adcolony/sdk/q;

    iget-object v2, p0, Lcom/adcolony/sdk/c;->t:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0, p0}, Lcom/adcolony/sdk/q;-><init>(Landroid/content/Context;Lcom/adcolony/sdk/z;ILcom/adcolony/sdk/c;)V

    .line 420
    invoke-virtual {v1}, Lcom/adcolony/sdk/q;->a()V

    .line 421
    iget-object v2, p0, Lcom/adcolony/sdk/c;->g:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v2, p0, Lcom/adcolony/sdk/c;->i:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    return-void
.end method

.method f(Lcom/adcolony/sdk/z;)Z
    .locals 5

    .prologue
    .line 433
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 435
    iget-object v0, p0, Lcom/adcolony/sdk/c;->i:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 436
    iget-object v1, p0, Lcom/adcolony/sdk/c;->g:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/q;

    .line 438
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 440
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v1, p1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const/4 v0, 0x0

    .line 445
    :goto_0
    return v0

    .line 444
    :cond_1
    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/c;->removeView(Landroid/view/View;)V

    .line 445
    const/4 v0, 0x1

    goto :goto_0
.end method

.method g(Lcom/adcolony/sdk/z;)V
    .locals 4

    .prologue
    .line 457
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 458
    new-instance v1, Lcom/adcolony/sdk/av;

    iget-object v2, p0, Lcom/adcolony/sdk/c;->t:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0, p0}, Lcom/adcolony/sdk/av;-><init>(Landroid/content/Context;Lcom/adcolony/sdk/z;ILcom/adcolony/sdk/c;)V

    .line 459
    invoke-virtual {v1}, Lcom/adcolony/sdk/av;->b()V

    .line 460
    iget-object v2, p0, Lcom/adcolony/sdk/c;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    iget-object v2, p0, Lcom/adcolony/sdk/c;->i:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    return-void
.end method

.method h(Lcom/adcolony/sdk/z;)Z
    .locals 5

    .prologue
    .line 472
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 474
    iget-object v0, p0, Lcom/adcolony/sdk/c;->i:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 475
    iget-object v1, p0, Lcom/adcolony/sdk/c;->a:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/av;

    .line 477
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 479
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v1, p1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const/4 v0, 0x0

    .line 489
    :goto_0
    return v0

    .line 483
    :cond_1
    iget-object v0, v1, Lcom/adcolony/sdk/av;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 485
    invoke-virtual {v1}, Lcom/adcolony/sdk/av;->c()V

    .line 487
    :cond_2
    invoke-virtual {v1}, Lcom/adcolony/sdk/av;->a()V

    .line 488
    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/c;->removeView(Landroid/view/View;)V

    .line 489
    const/4 v0, 0x1

    goto :goto_0
.end method

.method i(Lcom/adcolony/sdk/z;)Z
    .locals 6

    .prologue
    .line 502
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    .line 503
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "is_module"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    .line 505
    if-eqz v0, :cond_1

    .line 507
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->A:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "module_id"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/aw;

    .line 508
    if-nez v0, :cond_0

    .line 510
    sget-object v0, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    const-string v1, "Module WebView created with invalid id"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 511
    const/4 v0, 0x0

    .line 526
    :goto_0
    return v0

    .line 513
    :cond_0
    invoke-virtual {v0, p1, v3, p0}, Lcom/adcolony/sdk/aw;->a(Lcom/adcolony/sdk/z;ILcom/adcolony/sdk/c;)V

    .line 519
    :goto_1
    iget-object v1, p0, Lcom/adcolony/sdk/c;->d:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    iget-object v1, p0, Lcom/adcolony/sdk/c;->i:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 523
    const-string v2, "module_id"

    iget v0, v0, Lcom/adcolony/sdk/aw;->a:I

    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 524
    invoke-virtual {p1, v1}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 526
    const/4 v0, 0x1

    goto :goto_0

    .line 517
    :cond_1
    new-instance v0, Lcom/adcolony/sdk/aw;

    iget-object v1, p0, Lcom/adcolony/sdk/c;->t:Landroid/content/Context;

    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v2, v2, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/ab;

    iget v4, v2, Lcom/adcolony/sdk/ab;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v2, Lcom/adcolony/sdk/ab;->c:I

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/adcolony/sdk/aw;-><init>(Landroid/content/Context;Lcom/adcolony/sdk/z;IILcom/adcolony/sdk/c;)V

    goto :goto_1
.end method

.method j(Lcom/adcolony/sdk/z;)Z
    .locals 5

    .prologue
    .line 537
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 539
    iget-object v0, p0, Lcom/adcolony/sdk/c;->i:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 540
    iget-object v1, p0, Lcom/adcolony/sdk/c;->d:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/aw;

    .line 542
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 544
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v1, p1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const/4 v0, 0x0

    .line 551
    :goto_0
    return v0

    .line 548
    :cond_1
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/ab;

    iget v2, v1, Lcom/adcolony/sdk/aw;->a:I

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/ab;->a(I)Lcom/adcolony/sdk/ad;

    .line 550
    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/c;->removeView(Landroid/view/View;)V

    .line 551
    const/4 v0, 0x1

    goto :goto_0
.end method

.method k(Lcom/adcolony/sdk/z;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 564
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    .line 565
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "editable"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    .line 567
    if-eqz v0, :cond_0

    .line 569
    new-instance v0, Lcom/adcolony/sdk/m;

    iget-object v1, p0, Lcom/adcolony/sdk/c;->t:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v4, p0}, Lcom/adcolony/sdk/m;-><init>(Landroid/content/Context;Lcom/adcolony/sdk/z;ILcom/adcolony/sdk/c;)V

    .line 570
    invoke-virtual {v0}, Lcom/adcolony/sdk/m;->a()V

    .line 571
    iget-object v1, p0, Lcom/adcolony/sdk/c;->f:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    iget-object v1, p0, Lcom/adcolony/sdk/c;->i:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object v0, p0, Lcom/adcolony/sdk/c;->h:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    :goto_0
    return-void

    .line 575
    :cond_0
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "button"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 577
    new-instance v0, Lcom/adcolony/sdk/as;

    iget-object v1, p0, Lcom/adcolony/sdk/c;->t:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v4, p0}, Lcom/adcolony/sdk/as;-><init>(Landroid/content/Context;Lcom/adcolony/sdk/z;ILcom/adcolony/sdk/c;)V

    .line 578
    invoke-virtual {v0}, Lcom/adcolony/sdk/as;->a()V

    .line 579
    iget-object v1, p0, Lcom/adcolony/sdk/c;->b:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    iget-object v1, p0, Lcom/adcolony/sdk/c;->i:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    iget-object v0, p0, Lcom/adcolony/sdk/c;->h:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 585
    :cond_1
    new-instance v0, Lcom/adcolony/sdk/as;

    iget-object v1, p0, Lcom/adcolony/sdk/c;->t:Landroid/content/Context;

    const v2, 0x1030141

    move-object v3, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/adcolony/sdk/as;-><init>(Landroid/content/Context;ILcom/adcolony/sdk/z;ILcom/adcolony/sdk/c;)V

    .line 586
    invoke-virtual {v0}, Lcom/adcolony/sdk/as;->a()V

    .line 587
    iget-object v1, p0, Lcom/adcolony/sdk/c;->b:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    iget-object v1, p0, Lcom/adcolony/sdk/c;->i:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    iget-object v0, p0, Lcom/adcolony/sdk/c;->h:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method l(Lcom/adcolony/sdk/z;)Z
    .locals 5

    .prologue
    .line 601
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 602
    iget-object v0, p0, Lcom/adcolony/sdk/c;->i:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 605
    iget-object v1, p0, Lcom/adcolony/sdk/c;->h:Ljava/util/HashMap;

    iget v3, p0, Lcom/adcolony/sdk/c;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 607
    if-eqz v1, :cond_1

    .line 609
    iget-object v1, p0, Lcom/adcolony/sdk/c;->f:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 616
    :goto_0
    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    .line 618
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v1, p1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const/4 v0, 0x0

    .line 623
    :goto_1
    return v0

    .line 613
    :cond_1
    iget-object v1, p0, Lcom/adcolony/sdk/c;->b:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_0

    .line 622
    :cond_2
    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/c;->removeView(Landroid/view/View;)V

    .line 623
    const/4 v0, 0x1

    goto :goto_1
.end method

.method m(Lcom/adcolony/sdk/z;)V
    .locals 4

    .prologue
    .line 634
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 635
    new-instance v1, Lcom/adcolony/sdk/o;

    iget-object v2, p0, Lcom/adcolony/sdk/c;->t:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0, p0}, Lcom/adcolony/sdk/o;-><init>(Landroid/content/Context;Lcom/adcolony/sdk/z;ILcom/adcolony/sdk/c;)V

    .line 636
    invoke-virtual {v1}, Lcom/adcolony/sdk/o;->a()V

    .line 637
    iget-object v2, p0, Lcom/adcolony/sdk/c;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    iget-object v2, p0, Lcom/adcolony/sdk/c;->i:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    return-void
.end method

.method n(Lcom/adcolony/sdk/z;)Z
    .locals 5

    .prologue
    .line 649
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 651
    iget-object v0, p0, Lcom/adcolony/sdk/c;->i:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 652
    iget-object v1, p0, Lcom/adcolony/sdk/c;->c:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/o;

    .line 654
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 656
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v1, p1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const/4 v0, 0x0

    .line 663
    :goto_0
    return v0

    .line 660
    :cond_1
    invoke-virtual {v1}, Lcom/adcolony/sdk/o;->b()Z

    .line 662
    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/c;->removeView(Landroid/view/View;)V

    .line 663
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const v7, 0xff00

    const/4 v1, 0x1

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 309
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

    .line 313
    const/4 v0, 0x0

    .line 369
    :goto_0
    return v0

    .line 316
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 319
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v4

    .line 320
    const-string v5, "view_id"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 321
    const-string v5, "ad_session_id"

    iget-object v6, p0, Lcom/adcolony/sdk/c;->m:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 322
    const-string v5, "container_x"

    invoke-static {v4, v5, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 323
    const-string v5, "container_y"

    invoke-static {v4, v5, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 324
    const-string v5, "view_x"

    invoke-static {v4, v5, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 325
    const-string v2, "view_y"

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 326
    const-string v2, "id"

    iget v3, p0, Lcom/adcolony/sdk/c;->n:I

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 328
    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v1

    .line 369
    goto :goto_0

    .line 331
    :pswitch_1
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_began"

    iget v3, p0, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_1

    .line 334
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/2addr v0, v7

    shr-int/lit8 v0, v0, 0x8

    .line 335
    const-string v2, "container_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 336
    const-string v2, "container_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 337
    const-string v2, "view_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 338
    const-string v2, "view_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v4, v2, v0}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 339
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_began"

    iget v3, p0, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_1

    .line 342
    :pswitch_3
    iget-boolean v0, p0, Lcom/adcolony/sdk/c;->q:Z

    if-nez v0, :cond_1

    .line 344
    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/adcolony/sdk/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ax;

    iput-object v0, v2, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/ax;

    .line 346
    :cond_1
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_ended"

    iget v3, p0, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_1

    .line 349
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/2addr v0, v7

    shr-int/lit8 v0, v0, 0x8

    .line 350
    const-string v2, "container_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 351
    const-string v2, "container_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 352
    const-string v2, "view_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 353
    const-string v2, "view_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 354
    const-string v2, "x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 355
    const-string v2, "y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v4, v2, v0}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 356
    iget-boolean v0, p0, Lcom/adcolony/sdk/c;->q:Z

    if-nez v0, :cond_2

    .line 358
    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/adcolony/sdk/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ax;

    iput-object v0, v2, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/ax;

    .line 360
    :cond_2
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_ended"

    iget v3, p0, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_1

    .line 363
    :pswitch_5
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_cancelled"

    iget v3, p0, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_1

    .line 366
    :pswitch_6
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_moved"

    iget v3, p0, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_1

    .line 328
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
