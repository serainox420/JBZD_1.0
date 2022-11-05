.class Lcom/adcolony/sdk/cb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    const-string v0, "Disabling AdColonyPubServices due to error or exception: "

    .line 32
    if-eqz p0, :cond_0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    :cond_0
    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 15
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    :cond_0
    if-nez p1, :cond_1

    .line 17
    const-string p1, ""

    .line 25
    :cond_1
    :goto_0
    return-object p1

    .line 22
    :cond_2
    if-eqz p1, :cond_3

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 25
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    invoke-static {p0, p1}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 113
    if-eqz p2, :cond_0

    .line 114
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    :cond_0
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    invoke-static {p0, p1}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 98
    if-eqz p2, :cond_0

    .line 99
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    if-eqz p3, :cond_0

    .line 101
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Z)V

    .line 104
    :cond_0
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;ZZ)V
    .locals 1

    .prologue
    .line 53
    if-eqz p4, :cond_0

    .line 55
    invoke-static {p1}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    :cond_0
    invoke-static {p0, p1}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    if-eqz p2, :cond_1

    .line 61
    if-eqz p3, :cond_1

    .line 62
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Z)V

    .line 66
    :cond_1
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 129
    if-eqz p2, :cond_0

    .line 130
    sget-object v0, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    invoke-static {p0, p1}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/u;->c:Lcom/adcolony/sdk/u;

    invoke-static {p0, p1}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    invoke-static {p0, p1}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 76
    return-void
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;ZZ)V
    .locals 0

    .prologue
    .line 85
    invoke-static {p0, p1, p2, p3, p4}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;ZZ)V

    .line 87
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    return-void
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 140
    if-eqz p2, :cond_0

    .line 141
    sget-object v0, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    invoke-static {p0, p1}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/u;->a:Lcom/adcolony/sdk/u;

    invoke-static {p0, p1}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0
.end method

.method static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    invoke-static {p0, p1}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 123
    return-void
.end method
