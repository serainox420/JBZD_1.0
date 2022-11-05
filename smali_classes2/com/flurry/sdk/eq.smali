.class public abstract Lcom/flurry/sdk/eq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/flurry/sdk/el;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;


# instance fields
.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const-class v0, Lcom/flurry/sdk/eq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/eq;->d:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/flurry/sdk/el;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/el;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/eq;->a:Lcom/flurry/sdk/el;

    .line 52
    const-string v0, "oauth_token=([^&]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/eq;->e:Ljava/util/regex/Pattern;

    .line 53
    const-string v0, "oauth_token_secret=([^&]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/eq;->f:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/eq;->b:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/eq;->c:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/eq;->g:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/eq;->b:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/eq;->c:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/eq;->g:Ljava/util/Map;

    .line 64
    return-void
.end method

.method protected static a(Ljava/lang/String;)Lcom/flurry/sdk/el;
    .locals 4

    .prologue
    .line 203
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/eq;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot extract token. Invalid response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x0

    .line 210
    :goto_0
    return-object v0

    .line 208
    :cond_0
    sget-object v0, Lcom/flurry/sdk/eq;->e:Ljava/util/regex/Pattern;

    invoke-static {p0, v0}, Lcom/flurry/sdk/eq;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 209
    sget-object v0, Lcom/flurry/sdk/eq;->f:Ljava/util/regex/Pattern;

    invoke-static {p0, v0}, Lcom/flurry/sdk/eq;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    .line 210
    new-instance v0, Lcom/flurry/sdk/el;

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/el;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 215
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 218
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/ee;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    .line 222
    :cond_0
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/eq;->d:Ljava/lang/String;

    const-string v2, "Cannot extract token from response"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 161
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-object v0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/eq;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error while encoding."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 147
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "HmacSHA1"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 148
    const-string v1, "HmacSHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 149
    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 150
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 151
    invoke-static {v0}, Lcom/flurry/sdk/eq;->a([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/eq;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error while signing:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 7

    .prologue
    .line 118
    iget-object v0, p0, Lcom/flurry/sdk/eq;->b:Ljava/util/Map;

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 120
    const-string v2, "OAuth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_0

    .line 125
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_0
    const-string v3, "%s=\"%s\""

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/sdk/ee;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract a()Lcom/flurry/sdk/ku$a;
.end method

.method protected final a(Lcom/flurry/sdk/ks;Lcom/flurry/sdk/el;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ks",
            "<**>;",
            "Lcom/flurry/sdk/el;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    .line 1097
    new-instance v0, Lcom/flurry/sdk/et;

    invoke-direct {v0}, Lcom/flurry/sdk/et;-><init>()V

    .line 2017
    iget-object v1, p2, Lcom/flurry/sdk/el;->a:Ljava/lang/String;

    .line 1099
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1100
    const-string v1, "oauth_token"

    .line 3017
    iget-object v2, p2, Lcom/flurry/sdk/el;->a:Ljava/lang/String;

    .line 1100
    invoke-virtual {p0, v1, v2}, Lcom/flurry/sdk/eq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    :cond_0
    const-string v1, "oauth_callback"

    invoke-static {}, Lcom/flurry/sdk/er;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/flurry/sdk/eq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    const-string v1, "oauth_timestamp"

    .line 3022
    invoke-static {}, Lcom/flurry/sdk/et;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1103
    invoke-virtual {p0, v1, v2}, Lcom/flurry/sdk/eq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    const-string v1, "oauth_nonce"

    .line 4017
    invoke-static {}, Lcom/flurry/sdk/et;->a()Ljava/lang/Long;

    move-result-object v2

    .line 4018
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, v0, Lcom/flurry/sdk/et;->a:Lcom/flurry/sdk/et$a;

    .line 4046
    iget-object v0, v0, Lcom/flurry/sdk/et$a;->a:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4018
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1104
    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/eq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    const-string v0, "oauth_consumer_key"

    invoke-static {}, Lcom/flurry/sdk/er;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/eq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    const-string v0, "oauth_signature_method"

    invoke-static {}, Lcom/flurry/sdk/er;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/eq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    const-string v0, "oauth_version"

    invoke-static {}, Lcom/flurry/sdk/er;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/eq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p0}, Lcom/flurry/sdk/eq;->a()Lcom/flurry/sdk/ku$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ku$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/eq;->b()Ljava/lang/String;

    move-result-object v0

    .line 4190
    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ":80"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ":80/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4191
    :cond_1
    const-string v2, "\\?.*"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":80"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5171
    :goto_0
    invoke-static {v1}, Lcom/flurry/sdk/ee;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5172
    invoke-static {v0}, Lcom/flurry/sdk/ee;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5180
    new-instance v2, Lcom/flurry/sdk/ek;

    invoke-direct {v2}, Lcom/flurry/sdk/ek;-><init>()V

    .line 5181
    new-instance v3, Lcom/flurry/sdk/ek;

    iget-object v4, p0, Lcom/flurry/sdk/eq;->g:Ljava/util/Map;

    invoke-direct {v3, v4}, Lcom/flurry/sdk/ek;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/ek;->a(Lcom/flurry/sdk/ek;)V

    .line 5182
    new-instance v3, Lcom/flurry/sdk/ek;

    iget-object v4, p0, Lcom/flurry/sdk/eq;->c:Ljava/util/Map;

    invoke-direct {v3, v4}, Lcom/flurry/sdk/ek;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/ek;->a(Lcom/flurry/sdk/ek;)V

    .line 5183
    new-instance v3, Lcom/flurry/sdk/ek;

    iget-object v4, p0, Lcom/flurry/sdk/eq;->b:Ljava/util/Map;

    invoke-direct {v3, v4}, Lcom/flurry/sdk/ek;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/ek;->a(Lcom/flurry/sdk/ek;)V

    .line 6091
    new-instance v3, Lcom/flurry/sdk/ek;

    iget-object v2, v2, Lcom/flurry/sdk/ek;->a:Ljava/util/List;

    invoke-direct {v3, v2}, Lcom/flurry/sdk/ek;-><init>(Ljava/util/List;)V

    .line 6092
    iget-object v2, v3, Lcom/flurry/sdk/ek;->a:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 7045
    invoke-virtual {v3}, Lcom/flurry/sdk/ek;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/flurry/sdk/ee;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5174
    const-string v3, "%s&%s&%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const/4 v0, 0x2

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5136
    invoke-static {}, Lcom/flurry/sdk/er;->b()Ljava/lang/String;

    move-result-object v1

    .line 8022
    iget-object v2, p2, Lcom/flurry/sdk/el;->b:Ljava/lang/String;

    .line 8141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/flurry/sdk/ee;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x26

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/flurry/sdk/ee;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/eq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1110
    const-string v1, "oauth_signature"

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/eq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    invoke-direct {p0}, Lcom/flurry/sdk/eq;->d()Ljava/lang/String;

    move-result-object v0

    .line 1113
    const-string v1, "Authorization"

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/eq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/flurry/sdk/eq;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/ks;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4193
    :cond_2
    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, ":443"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ":443/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4194
    :cond_3
    const-string v2, "\\?.*"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":443"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4197
    :cond_4
    const-string v2, "\\?.*"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 93
    :cond_5
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/sdk/eq;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/flurry/sdk/eq;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public abstract c()V
.end method
