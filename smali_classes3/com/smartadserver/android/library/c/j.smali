.class public Lcom/smartadserver/android/library/c/j;
.super Ljava/lang/Object;
.source "SASMediationSDKUtil.java"


# static fields
.field private static final a:[I

.field private static b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/smartadserver/android/library/c/j;->a:[I

    .line 46
    invoke-static {}, Lcom/smartadserver/android/library/c/j;->b()V

    .line 48
    return-void

    .line 37
    nop

    :array_0
    .array-data 4
        0x64
        0xc9
        0x12c
        0x1f4
        0x258
        0x2bc
        0x320
        0x384
        0x3e8
    .end array-data
.end method

.method public static a(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<+",
            "Lcom/smartadserver/android/library/c/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    sparse-switch p0, :sswitch_data_0

    .line 92
    :goto_0
    return-object v0

    .line 61
    :sswitch_0
    const-class v0, Lcom/smartadserver/android/library/c/k;

    goto :goto_0

    .line 64
    :sswitch_1
    const-class v0, Lcom/smartadserver/android/library/c/f;

    goto :goto_0

    .line 67
    :sswitch_2
    const-class v0, Lcom/smartadserver/android/library/c/e;

    goto :goto_0

    .line 73
    :sswitch_3
    const-class v0, Lcom/smartadserver/android/library/c/d;

    goto :goto_0

    .line 76
    :sswitch_4
    const-class v0, Lcom/smartadserver/android/library/c/a;

    goto :goto_0

    .line 79
    :sswitch_5
    const-class v0, Lcom/smartadserver/android/library/c/l;

    goto :goto_0

    .line 82
    :sswitch_6
    const-class v0, Lcom/smartadserver/android/library/c/b;

    goto :goto_0

    .line 85
    :sswitch_7
    const-class v0, Lcom/smartadserver/android/library/c/m;

    goto :goto_0

    .line 88
    :sswitch_8
    const-class v0, Lcom/smartadserver/android/library/c/c;

    goto :goto_0

    .line 59
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc9 -> :sswitch_1
        0x12c -> :sswitch_2
        0x1f4 -> :sswitch_3
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_5
        0x320 -> :sswitch_6
        0x384 -> :sswitch_7
        0x3e8 -> :sswitch_8
    .end sparse-switch
.end method

.method public static a()[I
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/smartadserver/android/library/c/j;->b:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    sparse-switch p0, :sswitch_data_0

    .line 134
    :goto_0
    return-object v0

    .line 103
    :sswitch_0
    const-string v0, "MillennialMedia"

    goto :goto_0

    .line 106
    :sswitch_1
    const-string v0, "InMobi"

    goto :goto_0

    .line 109
    :sswitch_2
    const-string v0, "Facebook"

    goto :goto_0

    .line 112
    :sswitch_3
    const-string v0, "Motionlead"

    goto :goto_0

    .line 115
    :sswitch_4
    const-string v0, "AppsFire"

    goto :goto_0

    .line 118
    :sswitch_5
    const-string v0, "AdColony"

    goto :goto_0

    .line 121
    :sswitch_6
    const-string v0, "MoPub"

    goto :goto_0

    .line 124
    :sswitch_7
    const-string v0, "AdMob"

    goto :goto_0

    .line 127
    :sswitch_8
    const-string v0, "UnityAds"

    goto :goto_0

    .line 130
    :sswitch_9
    const-string v0, "Applovin"

    goto :goto_0

    .line 101
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc9 -> :sswitch_1
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_5
        0x2bc -> :sswitch_6
        0x320 -> :sswitch_7
        0x384 -> :sswitch_8
        0x3e8 -> :sswitch_9
    .end sparse-switch
.end method

.method private static b()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 145
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move v1, v2

    .line 146
    :goto_0
    sget-object v0, Lcom/smartadserver/android/library/c/j;->a:[I

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 147
    sget-object v0, Lcom/smartadserver/android/library/c/j;->a:[I

    aget v4, v0, v1

    .line 149
    invoke-static {v4}, Lcom/smartadserver/android/library/c/j;->a(I)Ljava/lang/Class;

    move-result-object v0

    .line 153
    const/4 v5, 0x0

    :try_start_0
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 154
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/c/i;

    .line 156
    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    const/4 v0, 0x1

    .line 166
    :goto_1
    if-nez v0, :cond_0

    .line 167
    invoke-static {v4}, Lcom/smartadserver/android/library/c/j;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " mediation SDK is not available"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->b(Ljava/lang/String;)V

    .line 146
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1

    .line 173
    :cond_1
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 174
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/smartadserver/android/library/c/j;->b:[I

    .line 177
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 179
    sget-object v3, Lcom/smartadserver/android/library/c/j;->b:[I

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v2

    move v2, v1

    .line 180
    goto :goto_2

    .line 181
    :cond_2
    sget-object v0, Lcom/smartadserver/android/library/c/j;->b:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 182
    return-void

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public static c(I)Z
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/smartadserver/android/library/c/j;->b:[I

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
