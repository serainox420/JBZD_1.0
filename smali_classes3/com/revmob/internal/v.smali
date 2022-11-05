.class final Lcom/revmob/internal/v;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Ljava/lang/Throwable;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/Enum;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/internal/v;->a:Ljava/lang/Throwable;

    iput-object p2, p0, Lcom/revmob/internal/v;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/revmob/internal/v;->c:Ljava/lang/Enum;

    iput-object p4, p0, Lcom/revmob/internal/v;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/revmob/internal/v;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/revmob/internal/v;->a:Ljava/lang/Throwable;

    iget-object v1, p0, Lcom/revmob/internal/v;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/revmob/internal/v;->c:Ljava/lang/Enum;

    iget-object v3, p0, Lcom/revmob/internal/v;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/revmob/internal/v;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/revmob/internal/u;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
