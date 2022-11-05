.class Lcom/adcolony/sdk/am;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/io/File;

.field f:Ljava/io/File;

.field g:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)D
    .locals 4

    .prologue
    .line 123
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    .line 126
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 127
    mul-long/2addr v0, v2

    .line 129
    long-to-double v0, v0

    .line 133
    :goto_0
    return-wide v0

    .line 131
    :catch_0
    move-exception v0

    .line 133
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 23
    sget-object v2, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v3, "Configuring storage"

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adcolony/sdk/am;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/adc3/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adcolony/sdk/am;->a:Ljava/lang/String;

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adcolony/sdk/am;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "media/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adcolony/sdk/am;->b:Ljava/lang/String;

    .line 28
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/adcolony/sdk/am;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/adcolony/sdk/am;->e:Ljava/io/File;

    .line 30
    iget-object v2, p0, Lcom/adcolony/sdk/am;->e:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 32
    iget-object v2, p0, Lcom/adcolony/sdk/am;->e:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 33
    iget-object v2, p0, Lcom/adcolony/sdk/am;->e:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 36
    :cond_0
    iget-object v2, p0, Lcom/adcolony/sdk/am;->e:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 38
    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    invoke-virtual {v2, v1}, Lcom/adcolony/sdk/h;->b(Z)V

    .line 70
    :goto_0
    return v0

    .line 42
    :cond_1
    iget-object v2, p0, Lcom/adcolony/sdk/am;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/adcolony/sdk/am;->a(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4174000000000000L    # 2.097152E7

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    .line 44
    sget-object v2, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v3, "Not enough memory available at media path, disabling AdColony."

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 45
    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    invoke-virtual {v2, v1}, Lcom/adcolony/sdk/h;->b(Z)V

    goto :goto_0

    .line 49
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adcolony/sdk/am;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/adc3/data/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/am;->c:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/adcolony/sdk/am;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adcolony/sdk/am;->f:Ljava/io/File;

    .line 54
    iget-object v0, p0, Lcom/adcolony/sdk/am;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/adcolony/sdk/am;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/adcolony/sdk/am;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adcolony/sdk/am;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "tmp/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/am;->d:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/adcolony/sdk/am;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adcolony/sdk/am;->g:Ljava/io/File;

    .line 64
    iget-object v0, p0, Lcom/adcolony/sdk/am;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4

    .line 66
    iget-object v0, p0, Lcom/adcolony/sdk/am;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 67
    iget-object v0, p0, Lcom/adcolony/sdk/am;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_4
    move v0, v1

    .line 70
    goto/16 :goto_0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adcolony/sdk/am;->e:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/am;->f:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/am;->g:Ljava/io/File;

    if-nez v0, :cond_1

    .line 80
    :cond_0
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/am;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/adcolony/sdk/am;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/am;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/adcolony/sdk/am;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/adcolony/sdk/am;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/adcolony/sdk/am;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 96
    :cond_4
    iget-object v0, p0, Lcom/adcolony/sdk/am;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 97
    iget-object v0, p0, Lcom/adcolony/sdk/am;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 98
    iget-object v0, p0, Lcom/adcolony/sdk/am;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 100
    const/4 v0, 0x1

    goto :goto_0
.end method

.method c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 110
    const-string v0, ""

    .line 112
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
