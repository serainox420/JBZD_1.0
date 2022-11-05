.class public final Lcom/revmob/internal/u;
.super Ljava/lang/Object;


# static fields
.field private static a:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/revmob/internal/u;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Lcom/revmob/internal/v;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/revmob/internal/v;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v3, Lcom/revmob/internal/w;->a:Lcom/revmob/internal/w;

    invoke-virtual {p2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/revmob/internal/c;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "downloadCreativesErrors"

    :goto_0
    sget-object v3, Lcom/revmob/internal/u;->a:Lorg/json/JSONObject;

    const-string v4, "location"

    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Lcom/revmob/internal/u;->a:Lorg/json/JSONObject;

    const-string v4, "campaignId"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v2, :cond_8

    :try_start_0
    sget-object v2, Lcom/revmob/internal/u;->a:Lorg/json/JSONObject;

    const-string v3, "url"

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    if-eqz p0, :cond_7

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const-string v3, ""

    const/4 v4, 0x1

    array-length v7, v6

    const/4 v2, 0x0

    move v5, v2

    move-object v2, p0

    :goto_2
    if-ge v5, v7, :cond_6

    aget-object v8, v6, v5

    if-eqz v4, :cond_0

    sget-object v9, Lcom/revmob/internal/u;->a:Lorg/json/JSONObject;

    const-string v10, "file"

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    const-string v4, "Unknown"

    :goto_3
    invoke-virtual {v9, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v4, Lcom/revmob/internal/u;->a:Lorg/json/JSONObject;

    const-string v9, "lineNumber"

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v4, Lcom/revmob/internal/u;->a:Lorg/json/JSONObject;

    const-string v9, "method"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v4, Lcom/revmob/internal/u;->a:Lorg/json/JSONObject;

    const-string v9, "error"

    invoke-virtual {v4, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v4, 0x0

    :cond_0
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    :cond_1
    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    :goto_4
    add-int/lit8 v5, v5, 0x1

    move-object v12, v2

    move-object v2, v3

    move-object v3, v12

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/revmob/internal/w;->b:Lcom/revmob/internal/w;

    invoke-virtual {p2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/revmob/internal/c;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "clickRedirectionErrors"

    goto/16 :goto_0

    :cond_3
    sget-object v3, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    invoke-virtual {p2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/revmob/internal/c;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v1, "exceptions"

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :catch_0
    move-exception v8

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto :goto_4

    :cond_6
    sget-object v4, Lcom/revmob/internal/u;->a:Lorg/json/JSONObject;

    const-string v5, "stackTrace"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object p0, v2

    goto/16 :goto_1

    :catch_1
    move-exception v2

    :cond_7
    :try_start_4
    sget-object v2, Lcom/revmob/internal/u;->a:Lorg/json/JSONObject;

    const-string v3, "type"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/revmob/a/e;->b()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "error"

    sget-object v3, Lcom/revmob/internal/u;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/revmob/client/RevMobClient;->a()Lcom/revmob/client/RevMobClient;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/revmob/client/RevMobClient;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_8
    :goto_5
    return-void

    :catch_2
    move-exception v1

    goto :goto_5
.end method
