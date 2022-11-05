.class public final Lpl/jbzd/core/api/retrofit/converter/jackson/JacksonConverterFactory;
.super Lretrofit2/Converter$Factory;
.source "JacksonConverterFactory.java"


# instance fields
.field private final mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method private constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    .line 57
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mapper == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iput-object p1, p0, Lpl/jbzd/core/api/retrofit/converter/jackson/JacksonConverterFactory;->mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 59
    return-void
.end method

.method public static create()Lpl/jbzd/core/api/retrofit/converter/jackson/JacksonConverterFactory;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    invoke-static {v0}, Lpl/jbzd/core/api/retrofit/converter/jackson/JacksonConverterFactory;->create(Lcom/fasterxml/jackson/databind/ObjectMapper;)Lpl/jbzd/core/api/retrofit/converter/jackson/JacksonConverterFactory;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/fasterxml/jackson/databind/ObjectMapper;)Lpl/jbzd/core/api/retrofit/converter/jackson/JacksonConverterFactory;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lpl/jbzd/core/api/retrofit/converter/jackson/JacksonConverterFactory;

    invoke-direct {v0, p0}, Lpl/jbzd/core/api/retrofit/converter/jackson/JacksonConverterFactory;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object v0
.end method


# virtual methods
.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter",
            "<*",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lpl/jbzd/core/api/retrofit/converter/jackson/JacksonConverterFactory;->mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lpl/jbzd/core/api/retrofit/converter/jackson/JacksonConverterFactory;->mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writerFor(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    .line 72
    new-instance v1, Lpl/jbzd/core/api/retrofit/converter/jackson/JacksonRequestBodyConverter;

    invoke-direct {v1, v0}, Lpl/jbzd/core/api/retrofit/converter/jackson/JacksonRequestBodyConverter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;)V

    return-object v1
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter",
            "<",
            "Lokhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lpl/jbzd/core/api/retrofit/converter/jackson/JacksonConverterFactory;->mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lpl/jbzd/core/api/retrofit/converter/jackson/JacksonConverterFactory;->mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readerFor(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    .line 65
    new-instance v1, Lpl/jbzd/core/api/retrofit/converter/jackson/JacksonResponseBodyConverter;

    invoke-direct {v1, v0}, Lpl/jbzd/core/api/retrofit/converter/jackson/JacksonResponseBodyConverter;-><init>(Lcom/fasterxml/jackson/databind/ObjectReader;)V

    return-object v1
.end method
