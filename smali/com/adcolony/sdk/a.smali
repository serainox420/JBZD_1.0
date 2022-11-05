.class Lcom/adcolony/sdk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I = 0x0

.field static final b:I = 0x1

.field static final c:I = 0x0

.field static final d:I = 0x1

.field static final e:I = 0x2

.field static final f:I = 0x3

.field static final g:I = 0x4

.field static final h:I = 0x5

.field static final i:I = 0x6

.field static final j:I = 0x7

.field static final k:Z

.field static l:Landroid/app/Activity;

.field static m:Lcom/adcolony/sdk/h;

.field static n:Z

.field static o:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/ab;

    invoke-virtual {v0, p0, p1}, Lcom/adcolony/sdk/ab;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 197
    return-object p1
.end method

.method static a()V
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/ab;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ab;->b()V

    .line 221
    return-void
.end method

.method static a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 169
    sput-object p0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    .line 170
    return-void
.end method

.method static a(Landroid/app/Activity;Lcom/adcolony/sdk/AdColonyAppOptions;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 54
    sput-object p0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    .line 55
    sput-boolean v2, Lcom/adcolony/sdk/a;->o:Z

    .line 57
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/adcolony/sdk/h;

    invoke-direct {v0}, Lcom/adcolony/sdk/h;-><init>()V

    sput-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    .line 60
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    invoke-virtual {v0, p1, p2}, Lcom/adcolony/sdk/h;->a(Lcom/adcolony/sdk/AdColonyAppOptions;Z)V

    .line 68
    :goto_0
    sget-object v0, Lcom/adcolony/sdk/au;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/adcolony/sdk/a$1;

    invoke-direct {v1}, Lcom/adcolony/sdk/a$1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 77
    sget-object v0, Lcom/adcolony/sdk/u;->c:Lcom/adcolony/sdk/u;

    const-string v1, "Configuring AdColony"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 80
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iput-boolean v3, v0, Lcom/adcolony/sdk/h;->E:Z

    .line 81
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->f:Lcom/adcolony/sdk/aj;

    iput-boolean v2, v0, Lcom/adcolony/sdk/aj;->j:Z

    .line 82
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->f:Lcom/adcolony/sdk/aj;

    iput-boolean v2, v0, Lcom/adcolony/sdk/aj;->l:Z

    .line 83
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->f:Lcom/adcolony/sdk/aj;

    iput-boolean v3, v0, Lcom/adcolony/sdk/aj;->r:Z

    .line 84
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iput-boolean v2, v0, Lcom/adcolony/sdk/h;->H:Z

    .line 87
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->f:Lcom/adcolony/sdk/aj;

    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/aj;->a(Z)V

    .line 103
    return-void

    .line 64
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/h;->a(Lcom/adcolony/sdk/AdColonyAppOptions;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 108
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 116
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 117
    array-length v0, v1

    if-nez v0, :cond_2

    .line 118
    invoke-static {p0}, Lcom/adcolony/sdk/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "Failed copy hardcoded ad unit with error:"

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0

    .line 120
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v2, v2, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    iget-object v2, v2, Lcom/adcolony/sdk/am;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 123
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 124
    :cond_3
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/ab;

    invoke-virtual {v0, p0, p1}, Lcom/adcolony/sdk/ab;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 181
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 231
    if-eqz p1, :cond_0

    .line 233
    invoke-static {p1}, Lcom/adcolony/sdk/s;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {p0, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 253
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object p1

    .line 255
    :cond_0
    const-string v0, "m_type"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/ab;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/ab;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 260
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "JSON error from ADC.java\'s send_message(): "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 274
    :try_start_0
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v1, "CustomMessage.send"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;I)V

    .line 275
    iget-object v1, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "message"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 280
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "JSON error from ADC.java\'s send_custom_message(): "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0
.end method

.method static b(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/ab;

    invoke-virtual {v0, p0, p1}, Lcom/adcolony/sdk/ab;->b(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 210
    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 135
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 140
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v2, v2, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    iget-object v2, v2, Lcom/adcolony/sdk/am;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 144
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 146
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 147
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "Failed copy hardcoded ad unit file named: "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    const-string v2, " with error:"

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 158
    :goto_1
    return-void

    .line 149
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 151
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 152
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
