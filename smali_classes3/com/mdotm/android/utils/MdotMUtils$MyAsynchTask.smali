.class Lcom/mdotm/android/utils/MdotMUtils$MyAsynchTask;
.super Landroid/os/AsyncTask;
.source "MdotMUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mdotm/android/utils/MdotMUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAsynchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final synthetic this$0:Lcom/mdotm/android/utils/MdotMUtils;


# direct methods
.method public constructor <init>(Lcom/mdotm/android/utils/MdotMUtils;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/mdotm/android/utils/MdotMUtils$MyAsynchTask;->this$0:Lcom/mdotm/android/utils/MdotMUtils;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 280
    iput-object p2, p0, Lcom/mdotm/android/utils/MdotMUtils$MyAsynchTask;->context:Landroid/content/Context;

    .line 281
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mdotm/android/utils/MdotMUtils$MyAsynchTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 286
    aget-object v3, p1, v2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Reporting impression "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/mdotm/android/utils/MdotMUtils$MyAsynchTask;->this$0:Lcom/mdotm/android/utils/MdotMUtils;

    iget-object v4, p0, Lcom/mdotm/android/utils/MdotMUtils$MyAsynchTask;->context:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/mdotm/android/utils/MdotMUtils;->access$0(Lcom/mdotm/android/utils/MdotMUtils;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    const/16 v4, 0x7530

    .line 298
    const/16 v5, 0x2710

    .line 302
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 311
    :goto_1
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 312
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 315
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    .line 319
    :goto_2
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_0

    const/16 v2, 0xc9

    if-ne v0, v2, :cond_2

    .line 320
    :cond_0
    const-string v0, "impression successfull "

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    :cond_1
    :goto_3
    return-object v1

    .line 303
    :catch_0
    move-exception v0

    .line 304
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 308
    :catch_1
    move-exception v0

    .line 309
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 316
    :catch_2
    move-exception v0

    .line 317
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v2

    goto :goto_2

    .line 324
    :cond_2
    const-string v0, "impression unsuccessfull "

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 346
    :cond_3
    const-string v0, "imp pixel url is null"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3
.end method
