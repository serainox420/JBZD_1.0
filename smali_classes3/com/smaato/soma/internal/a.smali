.class public Lcom/smaato/soma/internal/a;
.super Ljava/lang/Object;
.source "DefaultFactory.java"


# static fields
.field private static a:Lcom/smaato/soma/internal/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/smaato/soma/internal/a;->a:Lcom/smaato/soma/internal/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/smaato/soma/internal/a;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/smaato/soma/internal/a;->a:Lcom/smaato/soma/internal/a;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/smaato/soma/internal/a;

    invoke-direct {v0}, Lcom/smaato/soma/internal/a;-><init>()V

    sput-object v0, Lcom/smaato/soma/internal/a;->a:Lcom/smaato/soma/internal/a;

    .line 51
    :cond_0
    sget-object v0, Lcom/smaato/soma/internal/a;->a:Lcom/smaato/soma/internal/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/smaato/soma/j;)Lcom/smaato/soma/b;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/smaato/soma/internal/a$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/smaato/soma/internal/a$1;-><init>(Lcom/smaato/soma/internal/a;Landroid/content/Context;Lcom/smaato/soma/j;)V

    .line 85
    invoke-virtual {v0}, Lcom/smaato/soma/internal/a$1;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/b;

    .line 80
    return-object v0
.end method

.method public final a(Lcom/smaato/soma/AdType;)Lcom/smaato/soma/bannerutilities/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/CreateBannerPackageFailedException;
        }
    .end annotation

    .prologue
    .line 124
    .line 126
    :try_start_0
    sget-object v0, Lcom/smaato/soma/internal/a$3;->a:[I

    invoke-virtual {p1}, Lcom/smaato/soma/AdType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 145
    new-instance v0, Lcom/smaato/soma/bannerutilities/f;

    invoke-direct {v0}, Lcom/smaato/soma/bannerutilities/f;-><init>()V

    .line 153
    :goto_0
    return-object v0

    .line 128
    :pswitch_0
    new-instance v0, Lcom/smaato/soma/bannerutilities/e;

    invoke-direct {v0}, Lcom/smaato/soma/bannerutilities/e;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    throw v0

    .line 131
    :pswitch_1
    :try_start_1
    new-instance v0, Lcom/smaato/soma/bannerutilities/d;

    invoke-direct {v0}, Lcom/smaato/soma/bannerutilities/d;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 150
    :catch_1
    move-exception v0

    .line 151
    new-instance v1, Lcom/smaato/soma/exception/CreateBannerPackageFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/CreateBannerPackageFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 134
    :pswitch_2
    :try_start_2
    new-instance v0, Lcom/smaato/soma/bannerutilities/c;

    invoke-direct {v0}, Lcom/smaato/soma/bannerutilities/c;-><init>()V

    goto :goto_0

    .line 137
    :pswitch_3
    new-instance v0, Lcom/smaato/soma/internal/a$2;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/a$2;-><init>(Lcom/smaato/soma/internal/a;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b()Lcom/smaato/soma/internal/requests/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/HttpConnectorFactoryInstantiationException;
        }
    .end annotation

    .prologue
    .line 94
    :try_start_0
    new-instance v0, Lcom/smaato/soma/internal/requests/c;

    invoke-direct {v0}, Lcom/smaato/soma/internal/requests/c;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    throw v0

    .line 97
    :catch_1
    move-exception v0

    .line 98
    new-instance v1, Lcom/smaato/soma/exception/HttpConnectorFactoryInstantiationException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/HttpConnectorFactoryInstantiationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c()Lcom/smaato/soma/internal/c/l;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/XmlParserFactoryInstantiationException;
        }
    .end annotation

    .prologue
    .line 108
    :try_start_0
    new-instance v0, Lcom/smaato/soma/internal/c/i;

    invoke-direct {v0}, Lcom/smaato/soma/internal/c/i;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    throw v0

    .line 111
    :catch_1
    move-exception v0

    .line 112
    new-instance v1, Lcom/smaato/soma/exception/XmlParserFactoryInstantiationException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/XmlParserFactoryInstantiationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
