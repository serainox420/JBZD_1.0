.class public Lcom/millennialmedia/internal/utils/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestHandler;,
        Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;,
        Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;,
        Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field public static httpRequestHandler:Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/millennialmedia/internal/utils/HttpUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/HttpUtils;->a:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestHandler;

    invoke-direct {v0}, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestHandler;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/utils/HttpUtils;->httpRequestHandler:Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/millennialmedia/internal/utils/HttpUtils;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getBitmapFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 315
    sget-object v0, Lcom/millennialmedia/internal/utils/HttpUtils;->httpRequestHandler:Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestHandler;

    new-instance v5, Lcom/millennialmedia/internal/utils/IOUtils$BitmapStreamer;

    invoke-direct {v5}, Lcom/millennialmedia/internal/utils/IOUtils$BitmapStreamer;-><init>()V

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestHandler;->sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    return-object v0
.end method

.method public static getContentFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 291
    sget-object v0, Lcom/millennialmedia/internal/utils/HttpUtils;->httpRequestHandler:Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestHandler;

    new-instance v5, Lcom/millennialmedia/internal/utils/IOUtils$StringStreamer;

    invoke-direct {v5}, Lcom/millennialmedia/internal/utils/IOUtils$StringStreamer;-><init>()V

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestHandler;->sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    return-object v0
.end method

.method public static getContentFromGetRequest(Ljava/lang/String;I)Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 297
    sget-object v0, Lcom/millennialmedia/internal/utils/HttpUtils;->httpRequestHandler:Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/millennialmedia/internal/utils/IOUtils$StringStreamer;

    invoke-direct {v5}, Lcom/millennialmedia/internal/utils/IOUtils$StringStreamer;-><init>()V

    move-object v1, p0

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestHandler;->sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    return-object v0
.end method

.method public static getContentFromPostRequest(Ljava/lang/String;I)Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 321
    sget-object v0, Lcom/millennialmedia/internal/utils/HttpUtils;->httpRequestHandler:Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/millennialmedia/internal/utils/IOUtils$StringStreamer;

    invoke-direct {v5}, Lcom/millennialmedia/internal/utils/IOUtils$StringStreamer;-><init>()V

    move-object v1, p0

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestHandler;->sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    return-object v0
.end method

.method public static getContentFromPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    .locals 6

    .prologue
    .line 303
    sget-object v0, Lcom/millennialmedia/internal/utils/HttpUtils;->httpRequestHandler:Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestHandler;

    const/4 v4, 0x0

    new-instance v5, Lcom/millennialmedia/internal/utils/IOUtils$StringStreamer;

    invoke-direct {v5}, Lcom/millennialmedia/internal/utils/IOUtils$StringStreamer;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestHandler;->sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    return-object v0
.end method

.method public static getContentFromPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    .locals 6

    .prologue
    .line 309
    sget-object v0, Lcom/millennialmedia/internal/utils/HttpUtils;->httpRequestHandler:Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestHandler;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/millennialmedia/internal/utils/IOUtils$StringStreamer;

    invoke-direct {v5}, Lcom/millennialmedia/internal/utils/IOUtils$StringStreamer;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestHandler;->sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    return-object v0
.end method
