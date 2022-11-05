.class Lcom/adcolony/sdk/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x1e

    iput v0, p0, Lcom/adcolony/sdk/ae;->a:I

    .line 11
    const-string v0, "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  x          xxxxxxx                          xxxx x                          xxxxx"

    iput-object v0, p0, Lcom/adcolony/sdk/ae;->b:Ljava/lang/String;

    .line 21
    const-string v0, "0123456789ABCDEF"

    iput-object v0, p0, Lcom/adcolony/sdk/ae;->c:Ljava/lang/String;

    .line 22
    const-string v0, "0123456789abcdef"

    iput-object v0, p0, Lcom/adcolony/sdk/ae;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(C)I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/adcolony/sdk/ae;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 140
    if-ltz v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/ae;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 146
    if-gez v0, :cond_0

    .line 151
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 95
    if-nez p1, :cond_0

    .line 97
    const-string p1, "null"

    .line 99
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 101
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_4

    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 104
    const/16 v4, 0x80

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/adcolony/sdk/ae;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    const/16 v4, 0x25

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    .line 112
    and-int/lit8 v3, v3, 0xf

    .line 113
    if-ge v4, v6, :cond_2

    .line 115
    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    :goto_2
    if-ge v3, v6, :cond_3

    .line 123
    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 119
    :cond_2
    add-int/lit8 v4, v4, 0x41

    add-int/lit8 v4, v4, -0xa

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 127
    :cond_3
    add-int/lit8 v3, v3, 0x41

    add-int/lit8 v3, v3, -0xa

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 131
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v2

    .line 36
    :cond_1
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 37
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v1, 0x30

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 161
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_3

    .line 163
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 164
    const/16 v3, 0x25

    if-ne v0, v3, :cond_2

    .line 166
    add-int/lit8 v0, v2, 0x1

    if-ge v0, v5, :cond_0

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v3, v0

    .line 167
    :goto_1
    add-int/lit8 v0, v2, 0x2

    if-ge v0, v5, :cond_1

    add-int/lit8 v0, v2, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 168
    :goto_2
    add-int/lit8 v2, v2, 0x2

    .line 170
    invoke-virtual {p0, v3}, Lcom/adcolony/sdk/ae;->a(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ae;->a(C)I

    move-result v0

    or-int/2addr v0, v3

    int-to-char v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v2

    .line 161
    :goto_3
    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    .line 166
    goto :goto_1

    :cond_1
    move v0, v1

    .line 167
    goto :goto_2

    .line 174
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_3

    .line 177
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 54
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 60
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 68
    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/adcolony/sdk/ae;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "wifi"

    .line 87
    :goto_0
    return-object v0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/ae;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const-string v0, "cell"

    goto :goto_0

    .line 87
    :cond_1
    const-string v0, "none"

    goto :goto_0
.end method
