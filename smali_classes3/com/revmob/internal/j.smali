.class public final Lcom/revmob/internal/j;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z

.field private static c:I

.field private static d:Ljava/util/regex/Pattern;

.field private static e:Ljava/util/regex/Pattern;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private i:Lorg/apache/http/client/RedirectHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1e

    sput v0, Lcom/revmob/internal/j;->c:I

    const-string v0, "details\\?id=[a-zA-Z0-9\\.]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/revmob/internal/j;->d:Ljava/util/regex/Pattern;

    const-string v0, "android\\?p=[a-zA-Z0-9\\.]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/revmob/internal/j;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v1, Lcom/revmob/internal/k;

    invoke-direct {v1}, Lcom/revmob/internal/k;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/revmob/internal/j;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/client/RedirectHandler;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/client/RedirectHandler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/revmob/internal/j;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/revmob/internal/j;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/revmob/internal/j;->h:Lorg/apache/http/impl/client/AbstractHttpClient;

    iput-object p4, p0, Lcom/revmob/internal/j;->i:Lorg/apache/http/client/RedirectHandler;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/revmob/internal/j;->b:Z

    iget-object v0, p0, Lcom/revmob/internal/j;->h:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v1, p0, Lcom/revmob/internal/j;->i:Lorg/apache/http/client/RedirectHandler;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "market://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "amzn://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v0, "#click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/revmob/internal/j;->f:Ljava/lang/String;

    const-string v2, "market://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/revmob/internal/j;->f:Ljava/lang/String;

    const-string v2, "amzn://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/revmob/internal/j;->f:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/revmob/internal/c;

    iget-object v2, p0, Lcom/revmob/internal/j;->h:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-direct {v0, v2}, Lcom/revmob/internal/c;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;)V

    sget v2, Lcom/revmob/internal/j;->c:I

    invoke-virtual {v0, v2}, Lcom/revmob/internal/c;->a(I)V

    iget-object v2, p0, Lcom/revmob/internal/j;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/revmob/internal/j;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/revmob/internal/c;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    sget-object v0, Lcom/revmob/internal/j;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object p1, Lcom/revmob/internal/j;->a:Ljava/lang/String;

    sput-object v1, Lcom/revmob/internal/j;->a:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/revmob/internal/j;->b:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    sput-boolean v0, Lcom/revmob/internal/j;->b:Z

    const-string p1, "alreadyOpeningBrowser"

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/revmob/internal/j;->i:Lorg/apache/http/client/RedirectHandler;

    check-cast v0, Lcom/revmob/internal/k;

    invoke-virtual {v0}, Lcom/revmob/internal/k;->a()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "market://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "amzn://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/revmob/internal/j;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    sget-object v1, Lcom/revmob/internal/j;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "amzn://apps/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_7
    move-object p1, v1

    goto/16 :goto_0
.end method
