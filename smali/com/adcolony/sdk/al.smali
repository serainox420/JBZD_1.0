.class Lcom/adcolony/sdk/al;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
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
            "Ljava/lang/Integer;",
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
            "Ljava/lang/Boolean;",
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
            "Ljava/lang/Integer;",
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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field i:Landroid/media/SoundPool;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/al;->c:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/al;->d:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/al;->f:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/al;->e:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/al;->g:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/al;->h:Ljava/util/HashMap;

    .line 46
    iput-object p1, p0, Lcom/adcolony/sdk/al;->a:Ljava/lang/String;

    .line 47
    iput p2, p0, Lcom/adcolony/sdk/al;->b:I

    .line 49
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0x32

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/adcolony/sdk/al;->i:Landroid/media/SoundPool;

    .line 50
    iget-object v0, p0, Lcom/adcolony/sdk/al;->i:Landroid/media/SoundPool;

    new-instance v1, Lcom/adcolony/sdk/al$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/adcolony/sdk/al$1;-><init>(Lcom/adcolony/sdk/al;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 69
    return-void
.end method


# virtual methods
.method a(Lcom/adcolony/sdk/z;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/adcolony/sdk/al;->i:Landroid/media/SoundPool;

    iget-object v2, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "filepath"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    .line 78
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "repeats"

    invoke-static {v0, v3}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 81
    :goto_0
    iget-object v3, p0, Lcom/adcolony/sdk/al;->f:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v3, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v4, "Load audio with id = "

    invoke-virtual {v3, v4}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/adcolony/sdk/u;->b(I)Lcom/adcolony/sdk/u;

    .line 85
    iget-object v3, p0, Lcom/adcolony/sdk/al;->d:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/adcolony/sdk/al;->e:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void

    :cond_0
    move v0, v1

    .line 78
    goto :goto_0
.end method

.method b(Lcom/adcolony/sdk/z;)V
    .locals 4

    .prologue
    .line 94
    iget-object v1, p0, Lcom/adcolony/sdk/al;->i:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/adcolony/sdk/al;->g:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->unload(I)Z

    .line 95
    return-void
.end method

.method c(Lcom/adcolony/sdk/z;)V
    .locals 7

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 102
    iget-object v0, p0, Lcom/adcolony/sdk/al;->g:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-static {v1, v3}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 104
    iget-object v0, p0, Lcom/adcolony/sdk/al;->e:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/adcolony/sdk/al;->i:Landroid/media/SoundPool;

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/adcolony/sdk/al;->d:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    .line 107
    if-eqz v0, :cond_0

    .line 110
    iget-object v2, p0, Lcom/adcolony/sdk/al;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 116
    const-string v1, "id"

    iget-object v2, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 117
    const-string v1, "ad_session_id"

    iget-object v2, p0, Lcom/adcolony/sdk/al;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 119
    new-instance v1, Lcom/adcolony/sdk/z;

    const-string v2, "AudioPlayer.on_error"

    iget v3, p0, Lcom/adcolony/sdk/al;->b:I

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/adcolony/sdk/al;->i:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/adcolony/sdk/al;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/media/SoundPool;->resume(I)V

    goto :goto_0
.end method

.method d(Lcom/adcolony/sdk/z;)V
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/adcolony/sdk/al;->g:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 136
    iget-object v2, p0, Lcom/adcolony/sdk/al;->i:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/adcolony/sdk/al;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/media/SoundPool;->pause(I)V

    .line 138
    iget-object v0, p0, Lcom/adcolony/sdk/al;->e:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method

.method e(Lcom/adcolony/sdk/z;)V
    .locals 5

    .prologue
    .line 146
    iget-object v1, p0, Lcom/adcolony/sdk/al;->i:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/adcolony/sdk/al;->c:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/adcolony/sdk/al;->g:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "id"

    invoke-static {v3, v4}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 147
    return-void
.end method
