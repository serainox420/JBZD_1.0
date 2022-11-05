.class public final Lcom/flurry/sdk/iv$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/iv;
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
        "Lcom/flurry/sdk/iv;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
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
    const/4 v0, 0x0

    .line 28
    .line 1057
    if-nez p1, :cond_1

    .line 1071
    :cond_0
    :goto_0
    return-object v0

    .line 1061
    :cond_1
    new-instance v1, Lcom/flurry/sdk/iv$a$2;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/iv$a$2;-><init>(Lcom/flurry/sdk/iv$a;Ljava/io/InputStream;)V

    .line 1068
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    .line 1069
    if-eqz v2, :cond_0

    .line 1074
    new-instance v0, Lcom/flurry/sdk/iv;

    invoke-direct {v0}, Lcom/flurry/sdk/iv;-><init>()V

    .line 1075
    new-array v2, v2, [B

    .line 2014
    iput-object v2, v0, Lcom/flurry/sdk/iv;->a:[B

    .line 3014
    iget-object v2, v0, Lcom/flurry/sdk/iv;->a:[B

    .line 1076
    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1078
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

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
    .line 28
    check-cast p2, Lcom/flurry/sdk/iv;

    .line 3036
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3037
    :cond_0
    :goto_0
    return-void

    .line 3040
    :cond_1
    new-instance v0, Lcom/flurry/sdk/iv$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/iv$a$1;-><init>(Lcom/flurry/sdk/iv$a;Ljava/io/OutputStream;)V

    .line 4014
    iget-object v1, p2, Lcom/flurry/sdk/iv;->a:[B

    .line 3047
    array-length v1, v1

    .line 3048
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 5014
    iget-object v1, p2, Lcom/flurry/sdk/iv;->a:[B

    .line 3049
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 3050
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3052
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method
