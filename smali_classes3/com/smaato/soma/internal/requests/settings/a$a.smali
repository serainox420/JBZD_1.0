.class Lcom/smaato/soma/internal/requests/settings/a$a;
.super Ljava/lang/Thread;
.source "DeviceDataCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/internal/requests/settings/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/internal/requests/settings/a;


# direct methods
.method private constructor <init>(Lcom/smaato/soma/internal/requests/settings/a;)V
    .locals 0

    .prologue
    .line 709
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/settings/a$a;->a:Lcom/smaato/soma/internal/requests/settings/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smaato/soma/internal/requests/settings/a;Lcom/smaato/soma/internal/requests/settings/a$1;)V
    .locals 0

    .prologue
    .line 709
    invoke-direct {p0, p1}, Lcom/smaato/soma/internal/requests/settings/a$a;-><init>(Lcom/smaato/soma/internal/requests/settings/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 714
    new-instance v0, Lcom/smaato/soma/internal/requests/settings/a$a$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/requests/settings/a$a$1;-><init>(Lcom/smaato/soma/internal/requests/settings/a$a;)V

    .line 740
    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/settings/a$a$1;->c()Ljava/lang/Object;

    .line 741
    return-void
.end method
