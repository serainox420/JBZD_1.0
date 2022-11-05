.class final Lcom/flurry/sdk/jh$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jh;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/flurry/sdk/jh;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jh;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Lcom/flurry/sdk/jh$7;->c:Lcom/flurry/sdk/jh;

    iput-object p2, p0, Lcom/flurry/sdk/jh$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/jh$7;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 664
    invoke-static {}, Lcom/flurry/sdk/hr;->a()Lcom/flurry/sdk/hr;

    move-result-object v0

    .line 1086
    iget-object v0, v0, Lcom/flurry/sdk/hr;->a:Lcom/flurry/sdk/im;

    .line 664
    iget-object v1, p0, Lcom/flurry/sdk/jh$7;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/jh$7;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/im;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 665
    return-void
.end method
