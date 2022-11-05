.class public Lcom/apprupt/sdk/Q;
.super Ljava/lang/Object;
.source "Q.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/Q$SuccessHandler;,
        Lcom/apprupt/sdk/Q$FailureHandler;,
        Lcom/apprupt/sdk/Q$CompletionHandler;,
        Lcom/apprupt/sdk/Q$BasePromise;,
        Lcom/apprupt/sdk/Q$BaseResolver;,
        Lcom/apprupt/sdk/Q$Promise;,
        Lcom/apprupt/sdk/Q$Completion;,
        Lcom/apprupt/sdk/Q$Task;,
        Lcom/apprupt/sdk/Q$Resolver;
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private final b:Lcom/apprupt/sdk/Logger$log;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apprupt/sdk/Q$Promise;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apprupt/sdk/Q$CompletionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apprupt/sdk/Q$FailureHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apprupt/sdk/Q$SuccessHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/os/Handler;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Throwable;

.field private volatile j:Z

.field private final k:Lcom/apprupt/sdk/Q$Completion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput v0, Lcom/apprupt/sdk/Q;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/Q;->c:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/Q;->d:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/Q;->e:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/Q;->f:Ljava/util/ArrayList;

    .line 138
    iput-object v1, p0, Lcom/apprupt/sdk/Q;->h:Ljava/lang/Object;

    .line 139
    iput-object v1, p0, Lcom/apprupt/sdk/Q;->i:Ljava/lang/Throwable;

    .line 140
    iput-boolean v3, p0, Lcom/apprupt/sdk/Q;->j:Z

    .line 141
    new-instance v0, Lcom/apprupt/sdk/Q$1;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/Q$1;-><init>(Lcom/apprupt/sdk/Q;)V

    iput-object v0, p0, Lcom/apprupt/sdk/Q;->k:Lcom/apprupt/sdk/Q$Completion;

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Q."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/apprupt/sdk/Q;->a:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/apprupt/sdk/Q;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/Q;->b:Lcom/apprupt/sdk/Logger$log;

    .line 185
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->b:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "intializing queue..."

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 186
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/Q;->g:Landroid/os/Handler;

    .line 187
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->b:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Creating initial task..."

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->g:Landroid/os/Handler;

    new-instance v1, Lcom/apprupt/sdk/Q$3;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/Q$3;-><init>(Lcom/apprupt/sdk/Q;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    return-void
.end method

.method public constructor <init>(Lcom/apprupt/sdk/Q$Task;)V
    .locals 2

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/apprupt/sdk/Q;-><init>()V

    .line 204
    new-instance v0, Lcom/apprupt/sdk/Q$BasePromise;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/apprupt/sdk/Q$BasePromise;-><init>(Lcom/apprupt/sdk/Q;Lcom/apprupt/sdk/Q$Task;Lcom/apprupt/sdk/Q$1;)V

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/Q;->a(Lcom/apprupt/sdk/Q$Promise;)Lcom/apprupt/sdk/Q;

    .line 205
    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/Q;)Lcom/apprupt/sdk/Logger$log;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->b:Lcom/apprupt/sdk/Logger$log;

    return-object v0
.end method

.method public static a(Lcom/apprupt/sdk/Q$Task;)Lcom/apprupt/sdk/Q;
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/apprupt/sdk/Q;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/Q;-><init>(Lcom/apprupt/sdk/Q$Task;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/apprupt/sdk/Q;
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/apprupt/sdk/Q;

    invoke-direct {v0}, Lcom/apprupt/sdk/Q;-><init>()V

    invoke-virtual {v0, p0}, Lcom/apprupt/sdk/Q;->b(Ljava/lang/Object;)Lcom/apprupt/sdk/Q;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/apprupt/sdk/Q;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/apprupt/sdk/Q;->h:Ljava/lang/Object;

    return-object p1
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 274
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->b:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "tasks end, run final stuff"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 275
    iget-boolean v0, p0, Lcom/apprupt/sdk/Q;->j:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Q tasks are over already!"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_0
    iput-boolean v4, p0, Lcom/apprupt/sdk/Q;->j:Z

    .line 277
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->i:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/Q$SuccessHandler;

    .line 279
    iget-object v2, p0, Lcom/apprupt/sdk/Q;->h:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/apprupt/sdk/Q$SuccessHandler;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/Q$FailureHandler;

    .line 283
    iget-object v2, p0, Lcom/apprupt/sdk/Q;->i:Ljava/lang/Throwable;

    iget-object v3, p0, Lcom/apprupt/sdk/Q;->h:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/apprupt/sdk/Q$FailureHandler;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    goto :goto_1

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/Q$CompletionHandler;

    .line 287
    iget-object v2, p0, Lcom/apprupt/sdk/Q;->i:Ljava/lang/Throwable;

    iget-object v3, p0, Lcom/apprupt/sdk/Q;->h:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/apprupt/sdk/Q$CompletionHandler;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    goto :goto_2

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 290
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 291
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 292
    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/Q;Lcom/apprupt/sdk/Q$Promise;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/Q;->b(Lcom/apprupt/sdk/Q$Promise;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/apprupt/sdk/Q;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method private a(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 166
    if-eqz p2, :cond_0

    .line 168
    new-instance v0, Lcom/apprupt/sdk/Q$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/apprupt/sdk/Q$2;-><init>(Lcom/apprupt/sdk/Q;Ljava/lang/String;Ljava/lang/Runnable;)V

    move-object p1, v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->g:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->g:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/apprupt/sdk/Q;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Lcom/apprupt/sdk/Q$Promise;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 295
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->b:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "next task..."

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 296
    if-eqz p1, :cond_0

    .line 297
    invoke-interface {p1}, Lcom/apprupt/sdk/Q$Promise;->c()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/Q;->h:Ljava/lang/Object;

    .line 298
    invoke-interface {p1}, Lcom/apprupt/sdk/Q$Promise;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-interface {p1}, Lcom/apprupt/sdk/Q$Promise;->a()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/Q;->i:Ljava/lang/Throwable;

    .line 300
    invoke-direct {p0}, Lcom/apprupt/sdk/Q;->a()V

    .line 309
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/Q$Promise;

    iget-object v1, p0, Lcom/apprupt/sdk/Q;->h:Ljava/lang/Object;

    iget-object v2, p0, Lcom/apprupt/sdk/Q;->k:Lcom/apprupt/sdk/Q$Completion;

    invoke-interface {v0, v1, v2}, Lcom/apprupt/sdk/Q$Promise;->a(Ljava/lang/Object;Lcom/apprupt/sdk/Q$Completion;)V

    goto :goto_0

    .line 307
    :cond_1
    invoke-direct {p0}, Lcom/apprupt/sdk/Q;->a()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/apprupt/sdk/Q;)Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/apprupt/sdk/Q;->j:Z

    return v0
.end method

.method static synthetic d(Lcom/apprupt/sdk/Q;)Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->i:Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic e(Lcom/apprupt/sdk/Q;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->h:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lcom/apprupt/sdk/Q;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lcom/apprupt/sdk/Q;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h(Lcom/apprupt/sdk/Q;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->d:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/apprupt/sdk/Q$CompletionHandler;)Lcom/apprupt/sdk/Q;
    .locals 4

    .prologue
    .line 258
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->b:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "new completion handler..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 259
    new-instance v0, Lcom/apprupt/sdk/Q$7;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/Q$7;-><init>(Lcom/apprupt/sdk/Q;Lcom/apprupt/sdk/Q$CompletionHandler;)V

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/Q;->a(Ljava/lang/Runnable;)V

    .line 269
    return-object p0
.end method

.method public a(Lcom/apprupt/sdk/Q$FailureHandler;)Lcom/apprupt/sdk/Q;
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->b:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "new failure handler..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 229
    new-instance v0, Lcom/apprupt/sdk/Q$5;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/Q$5;-><init>(Lcom/apprupt/sdk/Q;Lcom/apprupt/sdk/Q$FailureHandler;)V

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/Q;->a(Ljava/lang/Runnable;)V

    .line 239
    return-object p0
.end method

.method public a(Lcom/apprupt/sdk/Q$Promise;)Lcom/apprupt/sdk/Q;
    .locals 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->b:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "new promise..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    return-object p0
.end method

.method public a(Lcom/apprupt/sdk/Q$SuccessHandler;)Lcom/apprupt/sdk/Q;
    .locals 4

    .prologue
    .line 243
    iget-object v0, p0, Lcom/apprupt/sdk/Q;->b:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "new success handler..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 244
    new-instance v0, Lcom/apprupt/sdk/Q$6;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/Q$6;-><init>(Lcom/apprupt/sdk/Q;Lcom/apprupt/sdk/Q$SuccessHandler;)V

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/Q;->a(Ljava/lang/Runnable;)V

    .line 254
    return-object p0
.end method

.method public b(Lcom/apprupt/sdk/Q$Task;)Lcom/apprupt/sdk/Q;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Lcom/apprupt/sdk/Q$BasePromise;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/apprupt/sdk/Q$BasePromise;-><init>(Lcom/apprupt/sdk/Q;Lcom/apprupt/sdk/Q$Task;Lcom/apprupt/sdk/Q$1;)V

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/Q;->a(Lcom/apprupt/sdk/Q$Promise;)Lcom/apprupt/sdk/Q;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lcom/apprupt/sdk/Q;
    .locals 2

    .prologue
    .line 218
    new-instance v0, Lcom/apprupt/sdk/Q$4;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/Q$4;-><init>(Lcom/apprupt/sdk/Q;Ljava/lang/Object;)V

    const-string v1, "Cannot set initial value when task is done!"

    invoke-direct {p0, v0, v1}, Lcom/apprupt/sdk/Q;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 224
    return-object p0
.end method
