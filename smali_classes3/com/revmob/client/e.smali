.class final Lcom/revmob/client/e;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/revmob/client/f;

.field private synthetic d:Lcom/revmob/client/RevMobClient;


# direct methods
.method constructor <init>(Lcom/revmob/client/RevMobClient;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/f;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/client/e;->d:Lcom/revmob/client/RevMobClient;

    iput-object p2, p0, Lcom/revmob/client/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/revmob/client/e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/revmob/client/e;->c:Lcom/revmob/client/f;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    new-instance v1, Lcom/revmob/internal/c;

    invoke-direct {v1}, Lcom/revmob/internal/c;-><init>()V

    iget-object v0, p0, Lcom/revmob/client/e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/revmob/client/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/revmob/internal/c;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iget-object v2, p0, Lcom/revmob/client/e;->c:Lcom/revmob/client/f;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/revmob/client/e;->c:Lcom/revmob/client/f;

    iput-object v1, v2, Lcom/revmob/client/f;->c:Lcom/revmob/internal/c;

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/revmob/client/e;->d:Lcom/revmob/client/RevMobClient;

    iget-object v3, p0, Lcom/revmob/client/e;->c:Lcom/revmob/client/f;

    invoke-virtual {v2, v0, v3}, Lcom/revmob/client/RevMobClient;->a(Lorg/apache/http/HttpResponse;Lcom/revmob/client/f;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, v1, Lcom/revmob/internal/c;->c:Ljava/lang/String;

    sget-object v2, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    iget-object v3, p0, Lcom/revmob/client/e;->a:Ljava/lang/String;

    const-string v4, "serverRequest"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
