.class Lcom/adcolony/sdk/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Z

.field final synthetic c:Lcom/adcolony/sdk/y;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/y;IZ)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/adcolony/sdk/y$a;->c:Lcom/adcolony/sdk/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput p2, p0, Lcom/adcolony/sdk/y$a;->a:I

    .line 166
    iput-boolean p3, p0, Lcom/adcolony/sdk/y$a;->b:Z

    .line 167
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    .prologue
    .line 174
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 175
    const-string v1, "id"

    iget v2, p0, Lcom/adcolony/sdk/y$a;->a:I

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 176
    const-string v1, "ad_session_id"

    iget-object v2, p0, Lcom/adcolony/sdk/y$a;->c:Lcom/adcolony/sdk/y;

    iget-object v2, v2, Lcom/adcolony/sdk/y;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 178
    new-instance v1, Lcom/adcolony/sdk/z;

    const-string v2, "AudioPlayer.on_error"

    iget-object v3, p0, Lcom/adcolony/sdk/y$a;->c:Lcom/adcolony/sdk/y;

    iget v3, v3, Lcom/adcolony/sdk/y;->b:I

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/adcolony/sdk/y$a;->b:Z

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 190
    iget-object v0, p0, Lcom/adcolony/sdk/y$a;->c:Lcom/adcolony/sdk/y;

    iget-object v0, v0, Lcom/adcolony/sdk/y;->e:Ljava/util/HashMap;

    iget v1, p0, Lcom/adcolony/sdk/y$a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 193
    const-string v1, "id"

    iget v2, p0, Lcom/adcolony/sdk/y$a;->a:I

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 194
    const-string v1, "ad_session_id"

    iget-object v2, p0, Lcom/adcolony/sdk/y$a;->c:Lcom/adcolony/sdk/y;

    iget-object v2, v2, Lcom/adcolony/sdk/y;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 196
    new-instance v1, Lcom/adcolony/sdk/z;

    const-string v2, "AudioPlayer.on_ready"

    iget-object v3, p0, Lcom/adcolony/sdk/y$a;->c:Lcom/adcolony/sdk/y;

    iget v3, v3, Lcom/adcolony/sdk/y;->b:I

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    .line 197
    return-void
.end method
