.class public Lcom/smaato/soma/internal/requests/settings/b;
.super Ljava/lang/Object;
.source "InternalUserSettings.java"


# instance fields
.field private a:Lcom/smaato/soma/internal/requests/settings/UserSettings;


# direct methods
.method public constructor <init>(Lcom/smaato/soma/internal/requests/settings/UserSettings;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/settings/b;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/StringBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/GenerateUserSettingsFailed;
        }
    .end annotation

    .prologue
    .line 38
    :try_start_0
    new-instance v0, Lcom/smaato/soma/internal/requests/settings/b$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/requests/settings/b$1;-><init>(Lcom/smaato/soma/internal/requests/settings/b;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 39
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&coppa="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smaato/soma/internal/requests/settings/b;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings;

    invoke-virtual {v2}, Lcom/smaato/soma/internal/requests/settings/UserSettings;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/b;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/settings/UserSettings;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    invoke-static {v1}, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->getStringForValue(Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 51
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "&gender=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/smaato/soma/internal/requests/settings/b;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings;

    iget-object v5, v5, Lcom/smaato/soma/internal/requests/settings/UserSettings;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    .line 53
    invoke-static {v5}, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->getStringForValue(Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/smaato/soma/internal/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 51
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/b;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings;

    invoke-virtual {v1}, Lcom/smaato/soma/internal/requests/settings/UserSettings;->a()I

    move-result v1

    if-lez v1, :cond_1

    .line 66
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "&age=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/smaato/soma/internal/requests/settings/b;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings;

    invoke-virtual {v5}, Lcom/smaato/soma/internal/requests/settings/UserSettings;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/b;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/settings/UserSettings;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/b;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/settings/UserSettings;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 77
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "&kws=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/smaato/soma/internal/requests/settings/b;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings;

    iget-object v5, v5, Lcom/smaato/soma/internal/requests/settings/UserSettings;->c:Ljava/lang/String;

    .line 79
    invoke-static {v5}, Lcom/smaato/soma/internal/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 77
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/b;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/settings/UserSettings;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/b;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/settings/UserSettings;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 84
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "&qs=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/smaato/soma/internal/requests/settings/b;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings;

    iget-object v5, v5, Lcom/smaato/soma/internal/requests/settings/UserSettings;->d:Ljava/lang/String;

    .line 86
    invoke-static {v5}, Lcom/smaato/soma/internal/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 84
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    :cond_3
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/b;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/settings/UserSettings;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/b;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/settings/UserSettings;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 90
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "&region=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/smaato/soma/internal/requests/settings/b;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings;

    iget-object v5, v5, Lcom/smaato/soma/internal/requests/settings/UserSettings;->e:Ljava/lang/String;

    .line 92
    invoke-static {v5}, Lcom/smaato/soma/internal/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 90
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    :cond_4
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/b;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/settings/UserSettings;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/b;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/settings/UserSettings;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 96
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "&city=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/smaato/soma/internal/requests/settings/b;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings;

    iget-object v5, v5, Lcom/smaato/soma/internal/requests/settings/UserSettings;->f:Ljava/lang/String;

    .line 98
    invoke-static {v5}, Lcom/smaato/soma/internal/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 96
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    :cond_5
    return-object v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    throw v0

    .line 103
    :catch_1
    move-exception v0

    .line 104
    new-instance v1, Lcom/smaato/soma/exception/GenerateUserSettingsFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/GenerateUserSettingsFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
