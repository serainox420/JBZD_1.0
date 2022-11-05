.class Lcom/smaato/soma/internal/a$2;
.super Lcom/smaato/soma/bannerutilities/a;
.source "DefaultFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/a;->a(Lcom/smaato/soma/AdType;)Lcom/smaato/soma/bannerutilities/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/smaato/soma/internal/a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/a;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/smaato/soma/internal/a$2;->c:Lcom/smaato/soma/internal/a;

    invoke-direct {p0}, Lcom/smaato/soma/bannerutilities/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/smaato/soma/p;IIZ)Ljava/lang/StringBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToGenerateTextBanner;,
            Lcom/smaato/soma/exception/UnableToGenerateImageBanner;,
            Lcom/smaato/soma/exception/UnableToGenerateRichMediaBanner;
        }
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method
