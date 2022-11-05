.class public final Lcom/flurry/sdk/it$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/it;
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
        "Lcom/flurry/sdk/it;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/flurry/sdk/lf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/lf",
            "<",
            "Lcom/flurry/sdk/ip;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Lcom/flurry/sdk/lf;

    new-instance v1, Lcom/flurry/sdk/ip$a;

    invoke-direct {v1}, Lcom/flurry/sdk/ip$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/lf;-><init>(Lcom/flurry/sdk/lg;)V

    iput-object v0, p0, Lcom/flurry/sdk/it$a;->a:Lcom/flurry/sdk/lf;

    .line 128
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 123
    .line 1169
    if-nez p1, :cond_0

    .line 1170
    :goto_0
    return-object v9

    .line 1173
    :cond_0
    new-instance v0, Lcom/flurry/sdk/it$a$2;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/it$a$2;-><init>(Lcom/flurry/sdk/it$a;Ljava/io/InputStream;)V

    .line 1180
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 1181
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v10

    .line 1182
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    .line 1183
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/flurry/sdk/ix;->a(I)Lcom/flurry/sdk/ix;

    move-result-object v8

    .line 1184
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    .line 1185
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 1186
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 1187
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 1188
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1191
    new-instance v1, Lcom/flurry/sdk/it;

    invoke-direct/range {v1 .. v9}, Lcom/flurry/sdk/it;-><init>(Ljava/lang/String;ZJJLcom/flurry/sdk/ix;Ljava/util/Map;)V

    .line 1193
    invoke-static {v1, v10, v11}, Lcom/flurry/sdk/it;->a(Lcom/flurry/sdk/it;J)J

    .line 1194
    invoke-static {v1, v12}, Lcom/flurry/sdk/it;->a(Lcom/flurry/sdk/it;I)I

    .line 1195
    invoke-static {v1, v13}, Lcom/flurry/sdk/it;->b(Lcom/flurry/sdk/it;I)I

    .line 1196
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-static {v1, v2}, Lcom/flurry/sdk/it;->a(Lcom/flurry/sdk/it;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1198
    iget-object v0, p0, Lcom/flurry/sdk/it$a;->a:Lcom/flurry/sdk/lf;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/lf;->b(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    .line 1200
    if-eqz v0, :cond_1

    .line 1201
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2}, Lcom/flurry/sdk/it;->a(Lcom/flurry/sdk/it;Ljava/util/Map;)Ljava/util/Map;

    .line 1203
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ip;

    .line 1204
    iput-object v1, v0, Lcom/flurry/sdk/ip;->m:Lcom/flurry/sdk/it;

    .line 1205
    invoke-static {v1}, Lcom/flurry/sdk/it;->j(Lcom/flurry/sdk/it;)Ljava/util/Map;

    move-result-object v3

    .line 2102
    iget-wide v4, v0, Lcom/flurry/sdk/ip;->b:J

    .line 1205
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v9, v1

    .line 123
    goto :goto_0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    check-cast p2, Lcom/flurry/sdk/it;

    .line 2132
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2133
    :cond_0
    :goto_0
    return-void

    .line 2136
    :cond_1
    new-instance v0, Lcom/flurry/sdk/it$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/it$a$1;-><init>(Lcom/flurry/sdk/it$a;Ljava/io/OutputStream;)V

    .line 2144
    invoke-static {p2}, Lcom/flurry/sdk/it;->a(Lcom/flurry/sdk/it;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2145
    invoke-static {p2}, Lcom/flurry/sdk/it;->b(Lcom/flurry/sdk/it;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2146
    invoke-static {p2}, Lcom/flurry/sdk/it;->c(Lcom/flurry/sdk/it;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2147
    invoke-static {p2}, Lcom/flurry/sdk/it;->d(Lcom/flurry/sdk/it;)Lcom/flurry/sdk/ix;

    move-result-object v1

    .line 3034
    iget v1, v1, Lcom/flurry/sdk/ix;->e:I

    .line 2147
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2148
    invoke-static {p2}, Lcom/flurry/sdk/it;->e(Lcom/flurry/sdk/it;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2149
    invoke-static {p2}, Lcom/flurry/sdk/it;->f(Lcom/flurry/sdk/it;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2151
    invoke-static {p2}, Lcom/flurry/sdk/it;->g(Lcom/flurry/sdk/it;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2152
    invoke-static {p2}, Lcom/flurry/sdk/it;->g(Lcom/flurry/sdk/it;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2159
    :goto_1
    invoke-static {p2}, Lcom/flurry/sdk/it;->h(Lcom/flurry/sdk/it;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2160
    invoke-static {p2}, Lcom/flurry/sdk/it;->i(Lcom/flurry/sdk/it;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2162
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 2164
    iget-object v0, p0, Lcom/flurry/sdk/it$a;->a:Lcom/flurry/sdk/lf;

    invoke-virtual {p2}, Lcom/flurry/sdk/it;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/flurry/sdk/lf;->a(Ljava/io/OutputStream;Ljava/util/List;)V

    goto :goto_0

    .line 2155
    :cond_2
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1
.end method
