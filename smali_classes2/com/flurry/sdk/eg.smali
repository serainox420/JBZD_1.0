.class public final Lcom/flurry/sdk/eg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/eg$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
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

.field private static b:Ljava/util/Map;
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

.field private static c:Ljava/util/Map;
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
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/flurry/sdk/eg;->a:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/flurry/sdk/eg;->b:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/flurry/sdk/eg;->c:Ljava/util/Map;

    .line 57
    :try_start_0
    const-string v0, "ewogICJlbiI6ICJQb3N0IiwKICAiZGUiOiAiUG9zdGVuIiwKICAiZXMiOiAiUHVibGljYXIiLAogICJmciI6ICJQdWJsaWVyIiwKICAiaXQiOiAiUHViYmxpY2EiLAogICJqYSI6ICLmipXnqL8iLAogICJrbyI6ICLtj6zsiqTtjIUiLAogICJubCI6ICJQbGFhdHNlbiIsCiAgInBsIjogIld5xZtsaWoiLAogICJwdF9QVCI6ICJQdWJsaWNhciIsCiAgInB0X0JSIjogIlB1YmxpY2FyIiwKICAicnUiOiAi0J7Qv9GD0LHQu9C40LouIiwKICAidHIiOiAiR8O2bmRlciIsCiAgInpoX0NOIjogIuWPkeW4liIsCiAgInpoX1RXIjogIuiyvOaWhyIKfQ=="

    invoke-static {v0}, Lcom/flurry/sdk/eg;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/eg;->b:Ljava/util/Map;

    .line 58
    const-string v0, "ewogICJlbiI6ICJBZGQgYSBjYXB0aW9uLCBpZiB5b3UgbGlrZSIsCiAgImRlIjogIkbDvGdlIGVpbmUgQmlsZHVudGVyc2NocmlmdCBoaW56dSwgd2VubiBkdSBtYWdzdCIsCiAgImVzIjogIlNpIHF1aWVyZXMsIHB1ZWRlcyBhw7FhZGlyIHVuYSBkZXNjcmlwY2nDs24iLAogICJmciI6ICJBam91dGV6IHVuZSBsw6lnZW5kZSBzaSB2b3VzIHZvdWxleiIsCiAgIml0IjogIkFnZ2l1bmdpIHVuIHRpdG9sbywgc2UgdnVvaSIsCiAgImphIjogIuOCreODo+ODl+OCt+ODp+ODs+OBrui/veWKoCjjgqrjg5fjgrfjg6fjg7MpIiwKICAia28iOiAi7IKs7KeEIOyEpOuqhSDstpTqsIAgKOyYteyFmCkiLAogICJubCI6ICJWb2VnIGVlbiBiaWpzY2hyaWZ0IHRvZSwgYWxzIGplIHdpbCIsCiAgInBsIjogIkplxZtsaSBjaGNlc3osIGRvZGFqIHBvZHBpcyIsCiAgInB0X1BUIjogIkFkaWNpb25lIHVtYSBsZWdlbmRhLCBzZSB2b2PDqiBxdWlzZXIiLAogICJwdF9CUiI6ICJBZGljaW9uYSBsZWdlbmRhLCBzZSBxdWlzZXJlcyIsCiAgInJ1IjogItCV0YHQu9C4INGF0L7RgtC40YLQtSwg0LTQvtCx0LDQstGM0YLQtSDQv9C+0LTQv9C40YHRjCIsCiAgInRyIjogIkRpbGVyc2VuIHJlc2ltIHlhesSxc8SxIGVrbGUiLAogICJ6aF9DTiI6ICLkvaDlj6/ku6XlnKjmraTmt7vliqDor7TmmI4iLAogICJ6aF9UVyI6ICLkvaDkuZ/lj6/ku6XliqDkuIrnhafniYfoqqrmmI4iCn0="

    invoke-static {v0}, Lcom/flurry/sdk/eg;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/eg;->a:Ljava/util/Map;

    .line 59
    const-string v0, "ewogICJlbiI6ICJUaXRsZSIsCiAgImRlIjogIlRpdGVsIiwKICAiZXMiOiAiVMOtdHVsbyIsCiAgImZyIjogIlRpdHJlIiwKICAiaXQiOiAiVGl0b2xvIiwKICAiamEiOiAi44K/44Kk44OI44OrIiwKICAia28iOiAi7KCc66qpIiwKICAibmwiOiAiVGl0ZWwiLAogICJwbCI6ICJXecWbbGlqIiwKICAicHRfUFQiOiAiVMOtdHVsbyIsCiAgInB0X0JSIjogIlTDrXR1bG8iLAogICJydSI6ICLQl9Cw0LPQvtC70L7QstC+0LouIiwKICAidHIiOiAiQmHFn2zEsWsiLAogICJ6aF9DTiI6ICLmoIfpopgiLAogICJ6aF9UVyI6ICLmqJnpoYwiCn0="

    invoke-static {v0}, Lcom/flurry/sdk/eg;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/eg;->c:Ljava/util/Map;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    :goto_0
    return v0

    .line 70
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "meta"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 112
    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "pt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    :cond_0
    sget-object v1, Lcom/flurry/sdk/eg;->b:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    :goto_0
    return-object v0

    .line 115
    :cond_1
    sget-object v0, Lcom/flurry/sdk/eg;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    sget-object v0, Lcom/flurry/sdk/eg;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_2
    const-string v0, "Post"

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, "Cancel"

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "response"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "blogs"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 81
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 82
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 88
    :cond_0
    return-object v1
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 92
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 94
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 96
    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string v0, "Edit"

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 142
    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "pt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    :cond_0
    sget-object v1, Lcom/flurry/sdk/eg;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    :goto_0
    return-object v0

    .line 145
    :cond_1
    sget-object v0, Lcom/flurry/sdk/eg;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    sget-object v0, Lcom/flurry/sdk/eg;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 148
    :cond_2
    const-string v0, "Add a caption, if you like"

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 105
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 106
    return-object v1
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 154
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 156
    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "pt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    :cond_0
    sget-object v1, Lcom/flurry/sdk/eg;->c:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    :goto_0
    return-object v0

    .line 159
    :cond_1
    sget-object v0, Lcom/flurry/sdk/eg;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    sget-object v0, Lcom/flurry/sdk/eg;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 162
    :cond_2
    const-string v0, "Title"

    goto :goto_0
.end method
