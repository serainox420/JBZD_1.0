.class public Lpl/jbzd/api/ApiClient;
.super Ljava/lang/Object;
.source "ApiClient.java"


# static fields
.field public static final API_KEY:Ljava/lang/String; = "KZADSG7diTLJq6v"

.field public static final API_URL:Ljava/lang/String; = "http://api.jbzd.pl/api/"

.field public static final TAG:Ljava/lang/String;

.field private static avatar:Ljava/lang/String;

.field private static sInstance:Lpl/jbzd/api/ApiClient;

.field private static token:Ljava/lang/String;

.field private static userId:I

.field private static username:Ljava/lang/String;


# instance fields
.field private mApiService:Lpl/jbzd/api/ApiService;

.field private mLoginCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/api/auth/LoginCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoutCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/api/auth/LogoutCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    const-class v0, Lpl/jbzd/api/ApiClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpl/jbzd/api/ApiClient;->TAG:Ljava/lang/String;

    .line 44
    sput-object v1, Lpl/jbzd/api/ApiClient;->sInstance:Lpl/jbzd/api/ApiClient;

    .line 47
    const/4 v0, -0x1

    sput v0, Lpl/jbzd/api/ApiClient;->userId:I

    .line 48
    sput-object v1, Lpl/jbzd/api/ApiClient;->token:Ljava/lang/String;

    .line 49
    sput-object v1, Lpl/jbzd/api/ApiClient;->username:Ljava/lang/String;

    .line 50
    sput-object v1, Lpl/jbzd/api/ApiClient;->avatar:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/jbzd/api/ApiClient;->mLoginCallbacks:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/jbzd/api/ApiClient;->mLogoutCallbacks:Ljava/util/List;

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 149
    const-string v1, "token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lpl/jbzd/api/ApiClient;->token:Ljava/lang/String;

    .line 150
    const-string v1, "user_id"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lpl/jbzd/api/ApiClient;->userId:I

    .line 151
    const-string v1, "username"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lpl/jbzd/api/ApiClient;->username:Ljava/lang/String;

    .line 152
    const-string v1, "avatar"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpl/jbzd/api/ApiClient;->avatar:Ljava/lang/String;

    .line 154
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 156
    new-instance v1, Lpl/jbzd/api/ApiClient$1;

    invoke-direct {v1, p0, p1}, Lpl/jbzd/api/ApiClient$1;-><init>(Lpl/jbzd/api/ApiClient;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 227
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v2, "http://api.jbzd.pl/api/"

    .line 228
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 229
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 230
    invoke-static {}, Lpl/jbzd/core/api/retrofit/converter/jackson/JacksonConverterFactory;->create()Lpl/jbzd/core/api/retrofit/converter/jackson/JacksonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 233
    const-class v1, Lpl/jbzd/api/ApiService;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/api/ApiService;

    iput-object v0, p0, Lpl/jbzd/api/ApiClient;->mApiService:Lpl/jbzd/api/ApiService;

    .line 234
    return-void
.end method

.method public static declared-synchronized getApiService()Lpl/jbzd/api/ApiService;
    .locals 2

    .prologue
    .line 73
    const-class v1, Lpl/jbzd/api/ApiClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lpl/jbzd/api/ApiClient;->sInstance:Lpl/jbzd/api/ApiClient;

    iget-object v0, v0, Lpl/jbzd/api/ApiClient;->mApiService:Lpl/jbzd/api/ApiService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lpl/jbzd/api/ApiClient;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lpl/jbzd/api/ApiClient;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lpl/jbzd/api/ApiClient;->sInstance:Lpl/jbzd/api/ApiClient;

    return-object v0
.end method

.method public static getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lpl/jbzd/api/ApiClient;->token:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserId()I
    .locals 1

    .prologue
    .line 133
    sget v0, Lpl/jbzd/api/ApiClient;->userId:I

    return v0
.end method

.method public static getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lpl/jbzd/api/ApiClient;->username:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lpl/jbzd/api/ApiClient;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lpl/jbzd/api/ApiClient;->sInstance:Lpl/jbzd/api/ApiClient;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lpl/jbzd/api/ApiClient;

    invoke-direct {v0, p0}, Lpl/jbzd/api/ApiClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lpl/jbzd/api/ApiClient;->sInstance:Lpl/jbzd/api/ApiClient;

    .line 63
    :cond_0
    sget-object v0, Lpl/jbzd/api/ApiClient;->sInstance:Lpl/jbzd/api/ApiClient;

    return-object v0
.end method


# virtual methods
.method public addLoginCallback(Lpl/jbzd/api/auth/LoginCallback;)V
    .locals 1

    .prologue
    .line 243
    if-eqz p1, :cond_0

    iget-object v0, p0, Lpl/jbzd/api/ApiClient;->mLoginCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lpl/jbzd/api/ApiClient;->mLoginCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_0
    return-void
.end method

.method public addLogoutCallback(Lpl/jbzd/api/auth/LogoutCallback;)V
    .locals 1

    .prologue
    .line 255
    if-eqz p1, :cond_0

    iget-object v0, p0, Lpl/jbzd/api/ApiClient;->mLogoutCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lpl/jbzd/api/ApiClient;->mLogoutCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_0
    return-void
.end method

.method public getLoginCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/api/auth/LoginCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lpl/jbzd/api/ApiClient;->mLoginCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public getLogoutCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/api/auth/LogoutCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lpl/jbzd/api/ApiClient;->mLogoutCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public logout(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 112
    if-eqz p1, :cond_1

    .line 114
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getInstance()Lpl/jbzd/api/ApiClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lpl/jbzd/api/ApiClient;->setToken(Landroid/content/Context;Lpl/jbzd/app/model/User;)V

    .line 116
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getInstance()Lpl/jbzd/api/ApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/api/ApiClient;->getLogoutCallbacks()Ljava/util/List;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/api/auth/LogoutCallback;

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0}, Lpl/jbzd/api/auth/LogoutCallback;->onSuccess()V

    goto :goto_0

    .line 124
    :cond_1
    return-void
.end method

.method public setToken(Landroid/content/Context;Lpl/jbzd/app/model/User;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 78
    if-eqz p1, :cond_0

    .line 80
    if-eqz p2, :cond_1

    .line 82
    iget-object v0, p2, Lpl/jbzd/app/model/User;->token:Ljava/lang/String;

    sput-object v0, Lpl/jbzd/api/ApiClient;->token:Ljava/lang/String;

    .line 83
    invoke-virtual {p2}, Lpl/jbzd/app/model/User;->realmGet$id()I

    move-result v0

    sput v0, Lpl/jbzd/api/ApiClient;->userId:I

    .line 84
    invoke-virtual {p2}, Lpl/jbzd/app/model/User;->realmGet$username()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpl/jbzd/api/ApiClient;->username:Ljava/lang/String;

    .line 85
    invoke-virtual {p2}, Lpl/jbzd/app/model/User;->realmGet$avatar()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpl/jbzd/api/ApiClient;->avatar:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "token"

    sget-object v2, Lpl/jbzd/api/ApiClient;->token:Ljava/lang/String;

    .line 89
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_id"

    sget v2, Lpl/jbzd/api/ApiClient;->userId:I

    .line 90
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "username"

    sget-object v2, Lpl/jbzd/api/ApiClient;->username:Ljava/lang/String;

    .line 91
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "avatar"

    sget-object v2, Lpl/jbzd/api/ApiClient;->avatar:Ljava/lang/String;

    .line 92
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lpl/jbzd/api/ApiClient;->avatar:Ljava/lang/String;

    sput-object v0, Lpl/jbzd/api/ApiClient;->username:Ljava/lang/String;

    sput-object v0, Lpl/jbzd/api/ApiClient;->token:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_id"

    const/4 v2, -0x1

    .line 101
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    .line 102
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "username"

    const-string v2, ""

    .line 103
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "avatar"

    const-string v2, ""

    .line 104
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
