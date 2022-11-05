.class public Lcom/intentsoftware/addapptr/c/j;
.super Ljava/lang/Object;
.source "SharedPreferencesHelper.java"


# static fields
.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "com.intentsoftware.addapptr"

.field private static application:Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 16
    sput-object p0, Lcom/intentsoftware/addapptr/c/j;->application:Landroid/app/Application;

    .line 17
    return-void
.end method

.method public static read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lcom/intentsoftware/addapptr/c/j;->application:Landroid/app/Application;

    const-string v1, "com.intentsoftware.addapptr"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 22
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lcom/intentsoftware/addapptr/c/j;->application:Landroid/app/Application;

    const-string v1, "com.intentsoftware.addapptr"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 35
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 37
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lcom/intentsoftware/addapptr/c/j;->application:Landroid/app/Application;

    const-string v1, "com.intentsoftware.addapptr"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 28
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 29
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 31
    return-void
.end method
