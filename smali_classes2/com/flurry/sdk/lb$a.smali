.class public final Lcom/flurry/sdk/lb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/lb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lg",
        "<",
        "Lcom/flurry/sdk/lb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    .line 1047
    if-nez p1, :cond_0

    .line 1048
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1051
    :cond_0
    new-instance v1, Lcom/flurry/sdk/lb$a$2;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/lb$a$2;-><init>(Lcom/flurry/sdk/lb$a;Ljava/io/InputStream;)V

    .line 1058
    new-instance v0, Lcom/flurry/sdk/lb;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/flurry/sdk/lb;-><init>(B)V

    .line 1059
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 2014
    iput-object v1, v0, Lcom/flurry/sdk/lb;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    check-cast p2, Lcom/flurry/sdk/lb;

    .line 2029
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2030
    :cond_0
    :goto_0
    return-void

    .line 2033
    :cond_1
    new-instance v0, Lcom/flurry/sdk/lb$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/lb$a$1;-><init>(Lcom/flurry/sdk/lb$a;Ljava/io/OutputStream;)V

    .line 3014
    iget-object v1, p2, Lcom/flurry/sdk/lb;->a:Ljava/lang/String;

    .line 2040
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2042
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method
