.class public final Lcom/flurry/sdk/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/br;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/flurry/sdk/bp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/sdk/bo;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x6

    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 2043
    :cond_1
    :try_start_0
    iget-object v1, p2, Lcom/flurry/sdk/bo;->c:Ljava/lang/String;

    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3043
    iget-object v1, p2, Lcom/flurry/sdk/bo;->c:Ljava/lang/String;

    .line 64
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_2

    .line 65
    const/4 v0, 0x1

    .line 78
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 79
    sget-object v1, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": package=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\": apk should include ad provider library with name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4035
    iget-object v3, p2, Lcom/flurry/sdk/bo;->a:Ljava/lang/String;

    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" and version=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4039
    iget-object v3, p2, Lcom/flurry/sdk/bo;->b:Ljava/lang/String;

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" or higher"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v1, v2}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    sget-object v2, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    const-string v3, "failed to find third party ad provider api with exception: "

    invoke-static {v4, v2, v3, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 70
    :catch_1
    move-exception v1

    .line 71
    sget-object v2, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    const-string v3, "failed to initialize third party ad provider api with exception: "

    invoke-static {v4, v2, v3, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 73
    :catch_2
    move-exception v1

    .line 74
    sget-object v2, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    const-string v3, "failed to link third party ad provider api with exception: "

    invoke-static {v4, v2, v3, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 85
    :cond_3
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": package=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": apk has ad provider library with name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5035
    iget-object v4, p2, Lcom/flurry/sdk/bo;->a:Ljava/lang/String;

    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" and version=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5039
    iget-object v4, p2, Lcom/flurry/sdk/bo;->b:Ljava/lang/String;

    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" or higher"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/flurry/sdk/bv;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 27
    if-nez p2, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v2

    .line 1046
    :cond_1
    iget-object v3, p2, Lcom/flurry/sdk/bv;->a:Ljava/lang/String;

    .line 32
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    iget-object v1, p2, Lcom/flurry/sdk/bv;->b:Ljava/util/List;

    .line 37
    if-eqz v1, :cond_0

    .line 41
    const/4 v0, 0x1

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/bo;

    .line 44
    invoke-static {v3, v4, v0}, Lcom/flurry/sdk/bp;->a(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/sdk/bo;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_2
    move v1, v0

    .line 49
    goto :goto_1

    :cond_2
    move v2, v1

    .line 51
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method
