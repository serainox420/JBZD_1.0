.class Lcom/adcolony/sdk/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/HashMap;
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

.field b:Lcom/adcolony/sdk/al;

.field c:Lcom/adcolony/sdk/y;

.field d:Ljava/lang/String;

.field e:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/f;->a:Ljava/util/HashMap;

    .line 28
    iput-object p1, p0, Lcom/adcolony/sdk/f;->d:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/adcolony/sdk/f;->e:I

    .line 30
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/adcolony/sdk/f;->b:Lcom/adcolony/sdk/al;

    iget-object v0, v0, Lcom/adcolony/sdk/al;->i:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoPause()V

    .line 68
    iget-object v0, p0, Lcom/adcolony/sdk/f;->c:Lcom/adcolony/sdk/y;

    invoke-virtual {v0}, Lcom/adcolony/sdk/y;->a()V

    .line 69
    return-void
.end method

.method a(Lcom/adcolony/sdk/z;)V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adcolony/sdk/f;->b:Lcom/adcolony/sdk/al;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/adcolony/sdk/al;

    iget-object v1, p0, Lcom/adcolony/sdk/f;->d:Ljava/lang/String;

    iget v2, p0, Lcom/adcolony/sdk/f;->e:I

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/al;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/adcolony/sdk/f;->b:Lcom/adcolony/sdk/al;

    .line 41
    new-instance v0, Lcom/adcolony/sdk/y;

    iget-object v1, p0, Lcom/adcolony/sdk/f;->d:Ljava/lang/String;

    iget v2, p0, Lcom/adcolony/sdk/f;->e:I

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/y;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/adcolony/sdk/f;->c:Lcom/adcolony/sdk/y;

    .line 45
    :cond_0
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 46
    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "use_sound_pool"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    iget-object v1, p0, Lcom/adcolony/sdk/f;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/adcolony/sdk/f;->b:Lcom/adcolony/sdk/al;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/al;->a(Lcom/adcolony/sdk/z;)V

    .line 56
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/adcolony/sdk/f;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/adcolony/sdk/f;->c:Lcom/adcolony/sdk/y;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/y;->a(Lcom/adcolony/sdk/z;)V

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/adcolony/sdk/f;->b:Lcom/adcolony/sdk/al;

    iget-object v0, v0, Lcom/adcolony/sdk/al;->i:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoResume()V

    .line 81
    iget-object v0, p0, Lcom/adcolony/sdk/f;->c:Lcom/adcolony/sdk/y;

    invoke-virtual {v0}, Lcom/adcolony/sdk/y;->b()V

    .line 82
    return-void
.end method

.method b(Lcom/adcolony/sdk/z;)V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/adcolony/sdk/f;->a:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/adcolony/sdk/f;->b:Lcom/adcolony/sdk/al;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/al;->d(Lcom/adcolony/sdk/z;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/f;->c:Lcom/adcolony/sdk/y;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/y;->b(Lcom/adcolony/sdk/z;)V

    goto :goto_0
.end method

.method c(Lcom/adcolony/sdk/z;)V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/adcolony/sdk/f;->a:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/adcolony/sdk/f;->b:Lcom/adcolony/sdk/al;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/al;->c(Lcom/adcolony/sdk/z;)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/f;->c:Lcom/adcolony/sdk/y;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/y;->c(Lcom/adcolony/sdk/z;)V

    goto :goto_0
.end method

.method d(Lcom/adcolony/sdk/z;)V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/adcolony/sdk/f;->a:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/adcolony/sdk/f;->b:Lcom/adcolony/sdk/al;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/al;->b(Lcom/adcolony/sdk/z;)V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/f;->c:Lcom/adcolony/sdk/y;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/y;->d(Lcom/adcolony/sdk/z;)V

    goto :goto_0
.end method

.method e(Lcom/adcolony/sdk/z;)V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/adcolony/sdk/f;->a:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/adcolony/sdk/f;->b:Lcom/adcolony/sdk/al;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/al;->e(Lcom/adcolony/sdk/z;)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/f;->c:Lcom/adcolony/sdk/y;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/y;->e(Lcom/adcolony/sdk/z;)V

    goto :goto_0
.end method
