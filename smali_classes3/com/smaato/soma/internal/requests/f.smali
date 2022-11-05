.class public Lcom/smaato/soma/internal/requests/f;
.super Ljava/lang/Object;
.source "RequestsBuilder.java"


# static fields
.field private static a:Lcom/smaato/soma/internal/requests/f;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Ljava/net/Proxy;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/smaato/soma/internal/requests/f;->a:Lcom/smaato/soma/internal/requests/f;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "HTTP_Connector"

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/f;->b:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smaato/soma/internal/requests/f;->d:Z

    .line 46
    iput-boolean v1, p0, Lcom/smaato/soma/internal/requests/f;->e:Z

    .line 48
    iput v1, p0, Lcom/smaato/soma/internal/requests/f;->f:I

    .line 59
    const-string v0, "http://soma.smaato.net/oapi/reqAd.jsp?"

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/f;->h:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static b()Lcom/smaato/soma/internal/requests/f;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/smaato/soma/internal/requests/f;->a:Lcom/smaato/soma/internal/requests/f;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/smaato/soma/internal/requests/f;

    invoke-direct {v0}, Lcom/smaato/soma/internal/requests/f;-><init>()V

    sput-object v0, Lcom/smaato/soma/internal/requests/f;->a:Lcom/smaato/soma/internal/requests/f;

    .line 72
    :cond_0
    sget-object v0, Lcom/smaato/soma/internal/requests/f;->a:Lcom/smaato/soma/internal/requests/f;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/f;->h:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/smaato/soma/d;Lcom/smaato/soma/internal/requests/settings/UserSettings;Lcom/smaato/soma/internal/requests/a;)Ljava/net/URL;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/AdRequestConstructionFailed;
        }
    .end annotation

    .prologue
    .line 103
    :try_start_0
    new-instance v0, Lcom/smaato/soma/internal/requests/f$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/requests/f$1;-><init>(Lcom/smaato/soma/internal/requests/f;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 104
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 105
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    new-instance v0, Lcom/smaato/soma/internal/requests/e;

    invoke-direct {v0, p1}, Lcom/smaato/soma/internal/requests/e;-><init>(Lcom/smaato/soma/d;)V

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/e;->a()Ljava/lang/StringBuffer;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 108
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 110
    :cond_0
    new-instance v0, Lcom/smaato/soma/internal/requests/settings/b;

    invoke-direct {v0, p2}, Lcom/smaato/soma/internal/requests/settings/b;-><init>(Lcom/smaato/soma/internal/requests/settings/UserSettings;)V

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/settings/b;->a()Ljava/lang/StringBuffer;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 112
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 114
    :cond_1
    const-string v0, "&modifyRM=true"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    const-string v0, "&beacon=true"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    move-result-object v0

    .line 118
    invoke-virtual {p2}, Lcom/smaato/soma/internal/requests/settings/UserSettings;->b()D

    move-result-wide v2

    .line 119
    invoke-virtual {p2}, Lcom/smaato/soma/internal/requests/settings/UserSettings;->c()D

    move-result-wide v4

    move-object v1, p3

    .line 117
    invoke-virtual/range {v0 .. v5}, Lcom/smaato/soma/internal/requests/settings/a;->a(Lcom/smaato/soma/internal/requests/a;DD)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const-string v0, "&client="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "sdkandroid_5-1-1"

    invoke-static {v1}, Lcom/smaato/soma/internal/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    const-string v0, "&autorefresh="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/smaato/soma/internal/requests/f;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 122
    const-string v0, "&offscreen="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/smaato/soma/internal/requests/f;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 123
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/f;->f()Ljava/lang/String;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 125
    const-string v1, "&bundle="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    :cond_2
    const-string v0, "&apiver=502"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "HTTP_Connector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 129
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->VERVOSE:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    .line 128
    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 132
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    throw v0

    .line 135
    :catch_1
    move-exception v0

    .line 136
    new-instance v1, Lcom/smaato/soma/exception/AdRequestConstructionFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/AdRequestConstructionFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 171
    iput p1, p0, Lcom/smaato/soma/internal/requests/f;->f:I

    .line 172
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/RequestBuilderInitialisationFailed;
        }
    .end annotation

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    :try_start_0
    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/requests/settings/a;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    :cond_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    throw v0

    .line 87
    :catch_1
    move-exception v0

    .line 88
    new-instance v1, Lcom/smaato/soma/exception/RequestBuilderInitialisationFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/RequestBuilderInitialisationFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/f;->h:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/smaato/soma/internal/requests/f;->e:Z

    .line 190
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/f;->c:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/smaato/soma/internal/requests/f;->d:Z

    .line 226
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/f;->g:Ljava/net/Proxy;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/smaato/soma/internal/requests/f;->d:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/smaato/soma/internal/requests/f$2;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/requests/f$2;-><init>(Lcom/smaato/soma/internal/requests/f;)V

    .line 242
    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/f$2;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 234
    return-object v0
.end method
