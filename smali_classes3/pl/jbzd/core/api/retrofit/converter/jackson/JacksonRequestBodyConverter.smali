.class final Lpl/jbzd/core/api/retrofit/converter/jackson/JacksonRequestBodyConverter;
.super Ljava/lang/Object;
.source "JacksonRequestBodyConverter.java"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Converter",
        "<TT;",
        "Lokhttp3/RequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final MEDIA_TYPE:Lokhttp3/MediaType;


# instance fields
.field private final adapter:Lcom/fasterxml/jackson/databind/ObjectWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "application/json; charset=UTF-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lpl/jbzd/core/api/retrofit/converter/jackson/JacksonRequestBodyConverter;->MEDIA_TYPE:Lokhttp3/MediaType;

    return-void
.end method

.method constructor <init>(Lcom/fasterxml/jackson/databind/ObjectWriter;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lpl/jbzd/core/api/retrofit/converter/jackson/JacksonRequestBodyConverter;->adapter:Lcom/fasterxml/jackson/databind/ObjectWriter;

    .line 33
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lpl/jbzd/core/api/retrofit/converter/jackson/JacksonRequestBodyConverter;->convert(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method public convert(Ljava/lang/Object;)Lokhttp3/RequestBody;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lokhttp3/RequestBody;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lpl/jbzd/core/api/retrofit/converter/jackson/JacksonRequestBodyConverter;->adapter:Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->writeValueAsBytes(Ljava/lang/Object;)[B

    move-result-object v0

    .line 38
    sget-object v1, Lpl/jbzd/core/api/retrofit/converter/jackson/JacksonRequestBodyConverter;->MEDIA_TYPE:Lokhttp3/MediaType;

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method
