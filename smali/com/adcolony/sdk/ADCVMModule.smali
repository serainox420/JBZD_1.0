.class Lcom/adcolony/sdk/ADCVMModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ad;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adcolony/sdk/ADCVMModule$ADCJSVirtualMachine;
    }
.end annotation


# static fields
.field static d:Z


# instance fields
.field a:Z

.field b:I

.field c:Ljava/util/concurrent/ExecutorService;

.field private e:Lorg/json/JSONArray;

.field private f:Ljava/lang/Runnable;

.field private g:Ljava/lang/Runnable;

.field private h:Lcom/adcolony/sdk/ADCVMModule$ADCJSVirtualMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adcolony/sdk/ADCVMModule;->d:Z

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;ILjava/lang/String;Lorg/json/JSONObject;Ljava/util/concurrent/ExecutorService;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/ADCVMModule;->e:Lorg/json/JSONArray;

    .line 115
    iput p2, p0, Lcom/adcolony/sdk/ADCVMModule;->b:I

    .line 116
    iput-object p5, p0, Lcom/adcolony/sdk/ADCVMModule;->c:Ljava/util/concurrent/ExecutorService;

    .line 119
    if-ne p2, v4, :cond_0

    sget-boolean v0, Lcom/adcolony/sdk/ADCVMModule;->d:Z

    if-eqz v0, :cond_0

    .line 121
    const-string p3, "ADCController.js"

    .line 125
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    const-string v1, "----------------------------------------------------------------------"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 126
    sget-object v0, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATING VM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 133
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 139
    if-ne p2, v4, :cond_4

    :try_start_0
    sget-boolean v2, Lcom/adcolony/sdk/ADCVMModule;->d:Z

    if-eqz v2, :cond_4

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/ADCVMModule;->a:Z

    .line 142
    invoke-virtual {p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 143
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 144
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 146
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 144
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    .line 149
    :cond_1
    const-string v0, ""

    .line 150
    if-eqz p4, :cond_2

    .line 152
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_2
    sget-object v3, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-boolean v3, v3, Lcom/adcolony/sdk/h;->F:Z

    if-nez v3, :cond_3

    .line 157
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 158
    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 159
    new-instance v3, Lcom/adcolony/sdk/ADCVMModule$ADCJSVirtualMachine;

    invoke-direct {v3, p0, p2, v2, v0}, Lcom/adcolony/sdk/ADCVMModule$ADCJSVirtualMachine;-><init>(Lcom/adcolony/sdk/ADCVMModule;I[B[B)V

    iput-object v3, p0, Lcom/adcolony/sdk/ADCVMModule;->h:Lcom/adcolony/sdk/ADCVMModule$ADCJSVirtualMachine;

    .line 162
    :cond_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 198
    :goto_1
    sget-object v0, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    const-string v1, "----------------------------------------------------------------------"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 199
    return-void

    .line 166
    :cond_4
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 168
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 190
    :catch_0
    move-exception v0

    .line 192
    sget-object v0, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v1, "JavaScript file not found: "

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_1

    .line 174
    :cond_5
    :try_start_2
    const-string v0, ""

    .line 175
    if-eqz p4, :cond_6

    .line 177
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_6
    sget-object v3, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-boolean v3, v3, Lcom/adcolony/sdk/h;->F:Z

    if-nez v3, :cond_7

    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 183
    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 184
    new-instance v3, Lcom/adcolony/sdk/ADCVMModule$ADCJSVirtualMachine;

    invoke-direct {v3, p0, p2, v1, v0}, Lcom/adcolony/sdk/ADCVMModule$ADCJSVirtualMachine;-><init>(Lcom/adcolony/sdk/ADCVMModule;I[B[B)V

    iput-object v3, p0, Lcom/adcolony/sdk/ADCVMModule;->h:Lcom/adcolony/sdk/ADCVMModule$ADCJSVirtualMachine;

    .line 187
    :cond_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 194
    :catch_1
    move-exception v0

    .line 196
    sget-object v0, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v1, "Unable to create virtual machine for: "

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_1
.end method

.method static synthetic a(Lcom/adcolony/sdk/ADCVMModule;)Lcom/adcolony/sdk/ADCVMModule$ADCJSVirtualMachine;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/adcolony/sdk/ADCVMModule;->h:Lcom/adcolony/sdk/ADCVMModule$ADCJSVirtualMachine;

    return-object v0
.end method

.method static synthetic a(Lcom/adcolony/sdk/ADCVMModule;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/adcolony/sdk/ADCVMModule;->e:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic b(Lcom/adcolony/sdk/ADCVMModule;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/adcolony/sdk/ADCVMModule;->e:Lorg/json/JSONArray;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/adcolony/sdk/ADCVMModule;->b:I

    return v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 208
    iget-object v1, p0, Lcom/adcolony/sdk/ADCVMModule;->e:Lorg/json/JSONArray;

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/ADCVMModule;->e:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 211
    monitor-exit v1

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/adcolony/sdk/ADCVMModule;->g:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lcom/adcolony/sdk/ADCVMModule$1;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/ADCVMModule$1;-><init>(Lcom/adcolony/sdk/ADCVMModule;)V

    iput-object v0, p0, Lcom/adcolony/sdk/ADCVMModule;->g:Ljava/lang/Runnable;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/ADCVMModule;->c:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/adcolony/sdk/ADCVMModule;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 232
    iget-object v0, p0, Lcom/adcolony/sdk/ADCVMModule;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 233
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/adcolony/sdk/ADCVMModule;->f:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/adcolony/sdk/ADCVMModule$2;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/ADCVMModule$2;-><init>(Lcom/adcolony/sdk/ADCVMModule;)V

    iput-object v0, p0, Lcom/adcolony/sdk/ADCVMModule;->f:Ljava/lang/Runnable;

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/ADCVMModule;->c:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/adcolony/sdk/ADCVMModule;->f:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 298
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/adcolony/sdk/ADCVMModule;->a:Z

    return v0
.end method
