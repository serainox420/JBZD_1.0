.class Lcom/smaato/soma/internal/c/j$1;
.super Lcom/smaato/soma/l;
.source "SomaCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/c/j;-><init>(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/smaato/soma/internal/c/j;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/c/j;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/smaato/soma/internal/c/j$1;->b:Lcom/smaato/soma/internal/c/j;

    iput-object p2, p0, Lcom/smaato/soma/internal/c/j$1;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smaato/soma/internal/c/j$1;->b:Lcom/smaato/soma/internal/c/j;

    iget-object v1, p0, Lcom/smaato/soma/internal/c/j$1;->a:Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smaato/soma/internal/c/j;->a(Lcom/smaato/soma/internal/c/j;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/smaato/soma/internal/c/j$1;->b:Lcom/smaato/soma/internal/c/j;

    iget-object v1, p0, Lcom/smaato/soma/internal/c/j$1;->a:Lorg/json/JSONObject;

    const-string v2, "summary"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smaato/soma/internal/c/j;->b(Lcom/smaato/soma/internal/c/j;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/smaato/soma/internal/c/j$1;->b:Lcom/smaato/soma/internal/c/j;

    iget-object v1, p0, Lcom/smaato/soma/internal/c/j$1;->a:Lorg/json/JSONObject;

    const-string v2, "description"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smaato/soma/internal/c/j;->c(Lcom/smaato/soma/internal/c/j;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/smaato/soma/internal/c/j$1;->b:Lcom/smaato/soma/internal/c/j;

    iget-object v1, p0, Lcom/smaato/soma/internal/c/j$1;->a:Lorg/json/JSONObject;

    const-string v2, "start"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smaato/soma/internal/c/j;->d(Lcom/smaato/soma/internal/c/j;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/smaato/soma/internal/c/j$1;->b:Lcom/smaato/soma/internal/c/j;

    iget-object v1, p0, Lcom/smaato/soma/internal/c/j$1;->a:Lorg/json/JSONObject;

    const-string v2, "end"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smaato/soma/internal/c/j;->e(Lcom/smaato/soma/internal/c/j;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/smaato/soma/internal/c/j$1;->a:Lorg/json/JSONObject;

    const-string v1, "recurrence"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    iget-object v1, p0, Lcom/smaato/soma/internal/c/j$1;->b:Lcom/smaato/soma/internal/c/j;

    const-string v2, "frequency"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/smaato/soma/internal/c/j;->f(Lcom/smaato/soma/internal/c/j;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/internal/c/j$1;->b:Lcom/smaato/soma/internal/c/j;

    iget-object v1, p0, Lcom/smaato/soma/internal/c/j$1;->a:Lorg/json/JSONObject;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smaato/soma/internal/c/j;->g(Lcom/smaato/soma/internal/c/j;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/smaato/soma/internal/c/j$1;->b:Lcom/smaato/soma/internal/c/j;

    iget-object v1, p0, Lcom/smaato/soma/internal/c/j$1;->a:Lorg/json/JSONObject;

    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smaato/soma/internal/c/j;->h(Lcom/smaato/soma/internal/c/j;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/smaato/soma/internal/c/j$1;->b:Lcom/smaato/soma/internal/c/j;

    iget-object v1, p0, Lcom/smaato/soma/internal/c/j$1;->a:Lorg/json/JSONObject;

    const-string v2, "exceptionDates"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smaato/soma/internal/c/j;->i(Lcom/smaato/soma/internal/c/j;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/smaato/soma/internal/c/j$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
