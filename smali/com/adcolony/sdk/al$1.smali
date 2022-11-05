.class Lcom/adcolony/sdk/al$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/al;-><init>(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/adcolony/sdk/al;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/al;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/adcolony/sdk/al$1;->c:Lcom/adcolony/sdk/al;

    iput-object p2, p0, Lcom/adcolony/sdk/al$1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/adcolony/sdk/al$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 4

    .prologue
    .line 54
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 55
    const-string v2, "id"

    iget-object v0, p0, Lcom/adcolony/sdk/al$1;->c:Lcom/adcolony/sdk/al;

    iget-object v0, v0, Lcom/adcolony/sdk/al;->f:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 56
    const-string v0, "ad_session_id"

    iget-object v2, p0, Lcom/adcolony/sdk/al$1;->a:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    if-nez p3, :cond_0

    .line 60
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AudioPlayer.on_ready"

    iget v3, p0, Lcom/adcolony/sdk/al$1;->b:I

    invoke-direct {v0, v2, v3, v1}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 61
    iget-object v0, p0, Lcom/adcolony/sdk/al$1;->c:Lcom/adcolony/sdk/al;

    iget-object v0, v0, Lcom/adcolony/sdk/al;->g:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/adcolony/sdk/al$1;->c:Lcom/adcolony/sdk/al;

    iget-object v1, v1, Lcom/adcolony/sdk/al;->f:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AudioPlayer.on_error"

    iget v3, p0, Lcom/adcolony/sdk/al$1;->b:I

    invoke-direct {v0, v2, v3, v1}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_0
.end method
