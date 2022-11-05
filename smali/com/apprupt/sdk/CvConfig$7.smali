.class Lcom/apprupt/sdk/CvConfig$7;
.super Ljava/lang/Object;
.source "CvConfig.java"

# interfaces
.implements Lcom/apprupt/sdk/Q$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvConfig;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvConfig;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/apprupt/sdk/CvConfig$7;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/apprupt/sdk/Q$Resolver;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 172
    iget-object v1, p0, Lcom/apprupt/sdk/CvConfig$7;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v1}, Lcom/apprupt/sdk/CvConfig;->a(Lcom/apprupt/sdk/CvConfig;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Preparing params"

    aput-object v4, v3, v0

    invoke-interface {v1, v3}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 173
    invoke-static {}, Lcom/apprupt/sdk/CvUnderscore;->b()Lcom/apprupt/sdk/CvUnderscore;

    move-result-object v1

    const-string v3, "sdkVersion"

    iget-object v4, p0, Lcom/apprupt/sdk/CvConfig$7;->a:Lcom/apprupt/sdk/CvConfig;

    iget-object v4, v4, Lcom/apprupt/sdk/CvConfig;->a:Ljava/lang/String;

    .line 174
    invoke-virtual {v1, v3, v4}, Lcom/apprupt/sdk/CvUnderscore;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/CvUnderscore;

    move-result-object v1

    const-string v3, "bundle"

    const-string v4, "android.%s"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/apprupt/sdk/CvConfig$7;->a:Lcom/apprupt/sdk/CvConfig;

    .line 175
    invoke-virtual {v6}, Lcom/apprupt/sdk/CvConfig;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/apprupt/sdk/CvUnderscore;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/CvUnderscore;

    move-result-object v3

    .line 177
    invoke-static {v3}, Lcom/apprupt/sdk/Q;->a(Ljava/lang/Object;)Lcom/apprupt/sdk/Q;

    move-result-object v4

    .line 178
    iget-object v1, p0, Lcom/apprupt/sdk/CvConfig$7;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v1}, Lcom/apprupt/sdk/CvConfig;->k(Lcom/apprupt/sdk/CvConfig;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvConfig$PropertiesProvider;

    .line 179
    invoke-interface {v0}, Lcom/apprupt/sdk/CvConfig$PropertiesProvider;->a()Lcom/apprupt/sdk/Q$Task;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {v4, v0}, Lcom/apprupt/sdk/Q;->b(Lcom/apprupt/sdk/Q$Task;)Lcom/apprupt/sdk/Q;

    move v0, v2

    :goto_1
    move v1, v0

    .line 184
    goto :goto_0

    .line 185
    :cond_0
    if-eqz v1, :cond_1

    .line 186
    new-instance v0, Lcom/apprupt/sdk/CvConfig$7$2;

    invoke-direct {v0, p0, p2}, Lcom/apprupt/sdk/CvConfig$7$2;-><init>(Lcom/apprupt/sdk/CvConfig$7;Lcom/apprupt/sdk/Q$Resolver;)V

    invoke-virtual {v4, v0}, Lcom/apprupt/sdk/Q;->a(Lcom/apprupt/sdk/Q$SuccessHandler;)Lcom/apprupt/sdk/Q;

    move-result-object v0

    new-instance v1, Lcom/apprupt/sdk/CvConfig$7$1;

    invoke-direct {v1, p0, p2}, Lcom/apprupt/sdk/CvConfig$7$1;-><init>(Lcom/apprupt/sdk/CvConfig$7;Lcom/apprupt/sdk/Q$Resolver;)V

    .line 191
    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/Q;->a(Lcom/apprupt/sdk/Q$FailureHandler;)Lcom/apprupt/sdk/Q;

    .line 200
    :goto_2
    return-void

    .line 198
    :cond_1
    invoke-interface {p2, v3}, Lcom/apprupt/sdk/Q$Resolver;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method
