.class public Lcom/james/SmartNotepad/SdcardList;
.super Landroid/app/ListActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static o:I


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Z

.field d:Landroid/view/View;

.field private e:Landroid/content/SharedPreferences;

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:[Ljava/lang/String;

.field private k:[Landroid/graphics/drawable/Drawable;

.field private l:[Ljava/lang/String;

.field private m:[Ljava/lang/String;

.field private n:[Ljava/lang/String;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:I

.field private u:Landroid/widget/ArrayAdapter;

.field private v:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1000

    sput v0, Lcom/james/SmartNotepad/SdcardList;->o:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->g:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const-string v1, ""

    :try_start_3
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_8} :catch_25
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_36

    :try_start_8
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_23} :catch_4b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_23} :catch_47

    move-result-object v1

    goto :goto_d

    :catch_25
    move-exception v2

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_29
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\ud30c\uc77c\uc774 \uc874\uc7ac\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_30
    if-eqz v1, :cond_35

    :try_start_32
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_42

    :cond_35
    :goto_35
    return-object v0

    :catch_36
    move-exception v2

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3a
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\ud30c\uc77c\uc744 \uc77d\uc744 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_30

    :catch_42
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35

    :catch_47
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_3a

    :catch_4b
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_29

    :cond_4f
    move-object v0, v1

    move-object v1, v2

    goto :goto_30
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Lcom/james/SmartNotepad/k;

    invoke-direct {v0, p0, p2}, Lcom/james/SmartNotepad/k;-><init>(Lcom/james/SmartNotepad/SdcardList;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_12

    :cond_11
    return-void

    :cond_12
    const/4 v1, 0x0

    :goto_13
    array-length v2, v0

    if-ge v1, v2, :cond_11

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    :cond_7
    :goto_7
    return-void

    :pswitch_8
    invoke-virtual {p0}, Lcom/james/SmartNotepad/SdcardList;->finish()V

    goto :goto_7

    :pswitch_c
    iget v0, p0, Lcom/james/SmartNotepad/SdcardList;->t:I

    if-lez v0, :cond_7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Yes"

    new-instance v3, Lcom/james/SmartNotepad/ae;

    invoke-direct {v3, p0}, Lcom/james/SmartNotepad/ae;-><init>(Lcom/james/SmartNotepad/SdcardList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "No"

    new-instance v3, Lcom/james/SmartNotepad/af;

    invoke-direct {v3, p0}, Lcom/james/SmartNotepad/af;-><init>(Lcom/james/SmartNotepad/SdcardList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f07005a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_7

    :pswitch_data_4a
    .packed-switch 0x7f090032
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "SdcardList"

    const-string v1, "SmartNotepad"

    const-string v2, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/SdcardList;->requestWindowFeature(I)Z

    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/SdcardList;->setContentView(I)V

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/SdcardList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->v:Landroid/widget/ListView;

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f030010

    invoke-virtual {p0}, Lcom/james/SmartNotepad/SdcardList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->u:Landroid/widget/ArrayAdapter;

    const v0, 0x7f090031

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/SdcardList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->r:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Path : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/james/SmartNotepad/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->r:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->r:Landroid/widget/TextView;

    const v1, -0x323233

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/SdcardList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->s:Landroid/widget/TextView;

    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/SdcardList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->p:Landroid/widget/Button;

    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/SdcardList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->q:Landroid/widget/Button;

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->p:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->q:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/admob/android/ads/ak;->c()V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 12

    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    :try_start_3
    const-string v0, "SdcardList"

    const-string v1, "SmartNotepad"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "position:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/james/SmartNotepad/az;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->h:[Ljava/lang/String;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/james/SmartNotepad/SdcardList;->k:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, p3

    if-eqz v1, :cond_36

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x32

    const/16 v5, 0x32

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_36
    if-eqz v0, :cond_68

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/james/SmartNotepad/SdcardList;->u:Landroid/widget/ArrayAdapter;

    new-instance v3, Lcom/james/SmartNotepad/ai;

    invoke-direct {v3, p0, v0}, Lcom/james/SmartNotepad/ai;-><init>(Lcom/james/SmartNotepad/SdcardList;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_68
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_68} :catch_69
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_68} :catch_6e

    :cond_68
    :goto_68
    return-void

    :catch_69
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_68

    :catch_6e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_68
.end method

.method protected onResume()V
    .registers 16

    const/4 v13, 0x0

    const-string v14, "Size : n/a"

    const-string v12, "SmartNotepad"

    const-string v11, "SdcardList"

    const-string v10, ""

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    const-string v0, "SdcardList"

    const-string v0, "SmartNotepad"

    const-string v0, "onResume"

    invoke-static {v11, v12, v0}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->e:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->e:Landroid/content/SharedPreferences;

    const-string v1, "PREFERENCE_BACKGROUND_THEME"

    const-string v2, "G"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->e:Landroid/content/SharedPreferences;

    const-string v1, "PREFERENCE_TYPEFACE"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->e:Landroid/content/SharedPreferences;

    const-string v1, "PREFERENCE_TEXTSTYLE"

    invoke-interface {v0, v1, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/james/SmartNotepad/SdcardList;->c:Z

    const-string v0, "SdcardList"

    const-string v0, "SmartNotepad"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "preferenceBackgroundTheme : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/james/SmartNotepad/SdcardList;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v12, v0}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->a:Ljava/lang/String;

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_120

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->v:Landroid/widget/ListView;

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    :goto_67
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a7

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/james/SmartNotepad/g;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->f:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/james/SmartNotepad/SdcardList;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/james/SmartNotepad/aj;

    invoke-direct {v1, p0}, Lcom/james/SmartNotepad/aj;-><init>(Lcom/james/SmartNotepad/SdcardList;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    :goto_a5
    iput-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->g:[Ljava/lang/String;

    :try_start_a7
    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->g:[Ljava/lang/String;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_ae
    .catch Ljava/lang/NullPointerException; {:try_start_a7 .. :try_end_ae} :catch_1aa

    :goto_ae
    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->g:[Ljava/lang/String;

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->g:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->h:[Ljava/lang/String;

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->g:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->i:[Ljava/lang/String;

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->g:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->j:[Ljava/lang/String;

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->g:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->k:[Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->g:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->l:[Ljava/lang/String;

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->g:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->m:[Ljava/lang/String;

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->g:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->n:[Ljava/lang/String;

    move v9, v13

    :goto_e4
    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->g:[Ljava/lang/String;

    array-length v0, v0

    if-lt v9, v0, :cond_1b0

    :cond_e9
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3af

    new-instance v0, Lcom/james/SmartNotepad/n;

    invoke-direct {v0, p0, p0, v8}, Lcom/james/SmartNotepad/n;-><init>(Lcom/james/SmartNotepad/SdcardList;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/SdcardList;->setListAdapter(Landroid/widget/ListAdapter;)V

    :goto_103
    const/4 v0, 0x0

    :try_start_104
    iput v0, p0, Lcom/james/SmartNotepad/SdcardList;->t:I
    :try_end_106
    .catch Ljava/lang/NumberFormatException; {:try_start_104 .. :try_end_106} :catch_3f3

    :goto_106
    :try_start_106
    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->g:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/james/SmartNotepad/SdcardList;->t:I
    :try_end_10b
    .catch Ljava/lang/NullPointerException; {:try_start_106 .. :try_end_10b} :catch_3fb

    :goto_10b
    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->s:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/james/SmartNotepad/SdcardList;->t:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_120
    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->a:Ljava/lang/String;

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->v:Landroid/widget/ListView;

    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    goto/16 :goto_67

    :cond_134
    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->a:Ljava/lang/String;

    const-string v1, "C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_148

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->v:Landroid/widget/ListView;

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    goto/16 :goto_67

    :cond_148
    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->a:Ljava/lang/String;

    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15c

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->v:Landroid/widget/ListView;

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    goto/16 :goto_67

    :cond_15c
    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->a:Ljava/lang/String;

    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_170

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->v:Landroid/widget/ListView;

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    goto/16 :goto_67

    :cond_170
    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->a:Ljava/lang/String;

    const-string v1, "F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_184

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->v:Landroid/widget/ListView;

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    goto/16 :goto_67

    :cond_184
    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->a:Ljava/lang/String;

    const-string v1, "G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19f

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->a:Ljava/lang/String;

    const-string v1, "H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19f

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->v:Landroid/widget/ListView;

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->setBackgroundColor(I)V

    goto/16 :goto_67

    :cond_19f
    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->v:Landroid/widget/ListView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    goto/16 :goto_67

    :cond_1a7
    const/4 v0, 0x0

    goto/16 :goto_a5

    :catch_1aa
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_ae

    :cond_1b0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/james/SmartNotepad/g;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/james/SmartNotepad/SdcardList;->g:[Ljava/lang/String;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdcardList"

    const-string v1, "SmartNotepad"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pathName : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v12, v1}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1e3
    iget-object v1, p0, Lcom/james/SmartNotepad/SdcardList;->h:[Ljava/lang/String;

    iget-object v2, p0, Lcom/james/SmartNotepad/SdcardList;->g:[Ljava/lang/String;

    aget-object v2, v2, v9

    aput-object v2, v1, v9

    const-string v1, "SdcardList"

    const-string v2, "SmartNotepad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "arrayJData01[i] : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/james/SmartNotepad/SdcardList;->h:[Ljava/lang/String;

    aget-object v4, v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_205
    .catch Ljava/lang/NullPointerException; {:try_start_1e3 .. :try_end_205} :catch_322

    :goto_205
    const-string v1, "SdcardList"

    const-string v1, "SmartNotepad"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data4 : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/james/SmartNotepad/SdcardList;->k:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data5 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/james/SmartNotepad/SdcardList;->l:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data6 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/james/SmartNotepad/SdcardList;->m:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v12, v1}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_23b
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-string v0, "SdcardList"

    const-string v4, "SmartNotepad"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fileSizeCheck "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25a
    .catch Ljava/lang/NullPointerException; {:try_start_23b .. :try_end_25a} :catch_358

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_37d

    :try_start_260
    const-string v0, "SdcardList"

    const-string v4, "SmartNotepad"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fileSize "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x400

    cmp-long v0, v2, v4

    if-gez v0, :cond_328

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_328

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->m:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Size : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " B"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v9
    :try_end_29b
    .catch Ljava/lang/NumberFormatException; {:try_start_260 .. :try_end_29b} :catch_34c
    .catch Ljava/util/IllegalFormatConversionException; {:try_start_260 .. :try_end_29b} :catch_371
    .catch Ljava/lang/NullPointerException; {:try_start_260 .. :try_end_29b} :catch_358

    :goto_29b
    :try_start_29b
    new-instance v0, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy.MM.dd HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v3, p0, Lcom/james/SmartNotepad/SdcardList;->j:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    const-string v0, "-"

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_385

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "r"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2d0
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_39a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "w"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2e9
    iget-object v1, p0, Lcom/james/SmartNotepad/SdcardList;->n:[Ljava/lang/String;

    aput-object v0, v1, v9
    :try_end_2ed
    .catch Ljava/lang/NullPointerException; {:try_start_29b .. :try_end_2ed} :catch_358

    :goto_2ed
    invoke-virtual {p0}, Lcom/james/SmartNotepad/SdcardList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/james/SmartNotepad/SdcardList;->k:[Landroid/graphics/drawable/Drawable;

    aput-object v0, v1, v9

    new-instance v0, Lcom/james/SmartNotepad/h;

    iget-object v1, p0, Lcom/james/SmartNotepad/SdcardList;->l:[Ljava/lang/String;

    aget-object v2, v1, v9

    iget-object v1, p0, Lcom/james/SmartNotepad/SdcardList;->h:[Ljava/lang/String;

    aget-object v3, v1, v9

    iget-object v1, p0, Lcom/james/SmartNotepad/SdcardList;->m:[Ljava/lang/String;

    aget-object v4, v1, v9

    iget-object v1, p0, Lcom/james/SmartNotepad/SdcardList;->k:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v1, v9

    iget-object v1, p0, Lcom/james/SmartNotepad/SdcardList;->j:[Ljava/lang/String;

    aget-object v6, v1, v9

    iget-object v1, p0, Lcom/james/SmartNotepad/SdcardList;->n:[Ljava/lang/String;

    aget-object v7, v1, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/james/SmartNotepad/h;-><init>(Lcom/james/SmartNotepad/SdcardList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_e4

    :catch_322
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_205

    :cond_328
    const-wide/16 v4, 0x400

    cmp-long v0, v2, v4

    if-ltz v0, :cond_369

    :try_start_32e
    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->m:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Size : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v5, 0x400

    div-long/2addr v2, v5

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v9
    :try_end_34a
    .catch Ljava/lang/NumberFormatException; {:try_start_32e .. :try_end_34a} :catch_34c
    .catch Ljava/util/IllegalFormatConversionException; {:try_start_32e .. :try_end_34a} :catch_371
    .catch Ljava/lang/NullPointerException; {:try_start_32e .. :try_end_34a} :catch_358

    goto/16 :goto_29b

    :catch_34c
    move-exception v0

    :try_start_34d
    iget-object v2, p0, Lcom/james/SmartNotepad/SdcardList;->m:[Ljava/lang/String;

    const-string v3, "Size : n/a"

    aput-object v3, v2, v9

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_356
    .catch Ljava/lang/NullPointerException; {:try_start_34d .. :try_end_356} :catch_358

    goto/16 :goto_29b

    :catch_358
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->m:[Ljava/lang/String;

    const-string v1, "Size : n/a"

    aput-object v14, v0, v9

    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->n:[Ljava/lang/String;

    const-string v1, "---"

    aput-object v1, v0, v9

    goto :goto_2ed

    :cond_369
    :try_start_369
    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->m:[Ljava/lang/String;

    const-string v2, "Size : n/a"

    aput-object v2, v0, v9
    :try_end_36f
    .catch Ljava/lang/NumberFormatException; {:try_start_369 .. :try_end_36f} :catch_34c
    .catch Ljava/util/IllegalFormatConversionException; {:try_start_369 .. :try_end_36f} :catch_371
    .catch Ljava/lang/NullPointerException; {:try_start_369 .. :try_end_36f} :catch_358

    goto/16 :goto_29b

    :catch_371
    move-exception v0

    :try_start_372
    iget-object v2, p0, Lcom/james/SmartNotepad/SdcardList;->m:[Ljava/lang/String;

    const-string v3, "Size : n/a"

    aput-object v3, v2, v9

    invoke-virtual {v0}, Ljava/util/IllegalFormatConversionException;->printStackTrace()V

    goto/16 :goto_29b

    :cond_37d
    iget-object v0, p0, Lcom/james/SmartNotepad/SdcardList;->m:[Ljava/lang/String;

    const-string v2, "Size : n/a"

    aput-object v2, v0, v9

    goto/16 :goto_29b

    :cond_385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2d0

    :cond_39a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3ac
    .catch Ljava/lang/NullPointerException; {:try_start_372 .. :try_end_3ac} :catch_358

    move-result-object v0

    goto/16 :goto_2e9

    :cond_3af
    new-instance v0, Lcom/james/SmartNotepad/h;

    const-string v1, ""

    const-string v3, "Empty list!"

    const-string v1, ""

    const/4 v5, 0x0

    const-string v1, ""

    const-string v1, ""

    move-object v1, p0

    move-object v2, v10

    move-object v4, v10

    move-object v6, v10

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/james/SmartNotepad/h;-><init>(Lcom/james/SmartNotepad/SdcardList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/james/SmartNotepad/n;

    invoke-direct {v0, p0, p0, v8}, Lcom/james/SmartNotepad/n;-><init>(Lcom/james/SmartNotepad/SdcardList;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/SdcardList;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_103

    :cond_3d1
    new-instance v0, Lcom/james/SmartNotepad/h;

    const-string v1, ""

    const-string v3, "SD card unmount!"

    const-string v1, ""

    const/4 v5, 0x0

    const-string v1, ""

    const-string v1, ""

    move-object v1, p0

    move-object v2, v10

    move-object v4, v10

    move-object v6, v10

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/james/SmartNotepad/h;-><init>(Lcom/james/SmartNotepad/SdcardList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/james/SmartNotepad/n;

    invoke-direct {v0, p0, p0, v8}, Lcom/james/SmartNotepad/n;-><init>(Lcom/james/SmartNotepad/SdcardList;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/SdcardList;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_103

    :catch_3f3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    iput v13, p0, Lcom/james/SmartNotepad/SdcardList;->t:I

    goto/16 :goto_106

    :catch_3fb
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_10b
.end method
