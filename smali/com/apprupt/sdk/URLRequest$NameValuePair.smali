.class public Lcom/apprupt/sdk/URLRequest$NameValuePair;
.super Ljava/lang/Object;
.source "URLRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/URLRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NameValuePair"
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/URLRequest;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/apprupt/sdk/URLRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/apprupt/sdk/URLRequest$NameValuePair;->a:Lcom/apprupt/sdk/URLRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/apprupt/sdk/URLRequest$NameValuePair;->b:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/apprupt/sdk/URLRequest$NameValuePair;->c:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/apprupt/sdk/URLRequest$NameValuePair;->b:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v1, p0, Lcom/apprupt/sdk/URLRequest$NameValuePair;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/apprupt/sdk/URLRequest$NameValuePair;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 51
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    iget-object v1, p0, Lcom/apprupt/sdk/URLRequest$NameValuePair;->c:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 54
    :catch_0
    move-exception v1

    goto :goto_0
.end method
